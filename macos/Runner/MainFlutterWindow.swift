import Cocoa
import CoreGraphics
import FlutterMacOS
import UserNotifications

/// Rendszerértesítések (árfolyam-riasztás) a modern UNUserNotificationCenterrel.
/// Az engedélyt az első értesítésnél kéri; előtérben is megjelenik, és a
/// koppintást a riasztás azonosítójával jelzi a Dart oldalnak.
final class AlertNotifications: NSObject, UNUserNotificationCenterDelegate {
  static let shared = AlertNotifications()

  var onClick: ((String) -> Void)?

  func setUp() { UNUserNotificationCenter.current().delegate = self }

  func show(id: String, title: String, body: String, completion: @escaping (Bool) -> Void) {
    let center = UNUserNotificationCenter.current()
    center.requestAuthorization(options: [.alert, .sound]) { granted, _ in
      guard granted else {
        DispatchQueue.main.async { completion(false) }
        return
      }
      let content = UNMutableNotificationContent()
      content.title = title
      content.body = body
      content.sound = .default
      content.userInfo = ["id": id]
      center.add(UNNotificationRequest(identifier: id, content: content, trigger: nil)) { error in
        DispatchQueue.main.async { completion(error == nil) }
      }
    }
  }

  func userNotificationCenter(
    _ center: UNUserNotificationCenter,
    willPresent notification: UNNotification,
    withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void
  ) {
    completionHandler([.banner, .sound])
  }

  func userNotificationCenter(
    _ center: UNUserNotificationCenter,
    didReceive response: UNNotificationResponse,
    withCompletionHandler completionHandler: @escaping () -> Void
  ) {
    let id = response.notification.request.content.userInfo["id"] as? String ?? ""
    DispatchQueue.main.async { self.onClick?(id) }
    completionHandler()
  }
}

/// Az Option billentyű figyelése a dupla Option-nyomáshoz (mint a Claude-ban).
///
/// Listen-only event tap a módosítókra: a homokozóban (App Sandbox) is működik,
/// ha a felhasználó megadja a „Bemenetfigyelés” (Input Monitoring) engedélyt.
/// Engedély nélkül csak akkor jelez, amikor a WhatStock van előtérben.
/// A dupla nyomás felismerése a Dart oldalon történik (`DoubleTapDetector`);
/// ez az osztály csak eseményeket küld: `down`, `downWithOthers`, `up`, `other`.
final class OptionKeyMonitor {
  static let shared = OptionKeyMonitor()

  var onEvent: ((String) -> Void)?

  private var tap: CFMachPort?
  private var source: CFRunLoopSource?
  private var localMonitor: Any?
  private var optionIsDown = false
  private var lastOptionUp: TimeInterval = 0

  var hasPermission: Bool { CGPreflightListenEventAccess() }

  @discardableResult
  func requestPermission() -> Bool { CGRequestListenEventAccess() }

  /// Igazzal tér vissza, ha a rendszerszintű figyelés is fut (van engedély).
  @discardableResult
  func start() -> Bool {
    stop()
    localMonitor = NSEvent.addLocalMonitorForEvents(matching: [.flagsChanged, .keyDown]) { [weak self] event in
      guard let self = self, self.tap == nil else { return event }
      let flags = CGEventFlags(rawValue: UInt64(event.modifierFlags.rawValue))
      self.handle(isKeyDown: event.type == .keyDown, flags: flags)
      return event
    }
    guard hasPermission else { return false }
    let mask = (1 << CGEventType.flagsChanged.rawValue) | (1 << CGEventType.keyDown.rawValue)
    let callback: CGEventTapCallBack = { _, type, event, refcon in
      if let refcon = refcon {
        let monitor = Unmanaged<OptionKeyMonitor>.fromOpaque(refcon).takeUnretainedValue()
        if type == .tapDisabledByTimeout || type == .tapDisabledByUserInput {
          if let t = monitor.tap { CGEvent.tapEnable(tap: t, enable: true) }
        } else {
          monitor.handle(isKeyDown: type == .keyDown, flags: event.flags)
        }
      }
      return Unmanaged.passUnretained(event)
    }
    guard let t = CGEvent.tapCreate(
      tap: .cgSessionEventTap,
      place: .headInsertEventTap,
      options: .listenOnly,
      eventsOfInterest: CGEventMask(mask),
      callback: callback,
      userInfo: Unmanaged.passUnretained(self).toOpaque()
    ) else { return false }
    tap = t
    let s = CFMachPortCreateRunLoopSource(kCFAllocatorDefault, t, 0)
    source = s
    CFRunLoopAddSource(CFRunLoopGetMain(), s, .commonModes)
    CGEvent.tapEnable(tap: t, enable: true)
    return true
  }

  func stop() {
    if let m = localMonitor {
      NSEvent.removeMonitor(m)
      localMonitor = nil
    }
    if let t = tap {
      CGEvent.tapEnable(tap: t, enable: false)
    }
    if let s = source {
      CFRunLoopRemoveSource(CFRunLoopGetMain(), s, .commonModes)
    }
    tap = nil
    source = nil
    optionIsDown = false
  }

  /// Csak az Option állapotváltozását és – az Option körül – azt jelezzük, hogy
  /// más billentyű is volt (a leütött billentyű maga nem kerül továbbításra).
  private func handle(isKeyDown: Bool, flags: CGEventFlags) {
    let now = ProcessInfo.processInfo.systemUptime
    if isKeyDown {
      if optionIsDown || now - lastOptionUp < 0.6 { emit("other") }
      return
    }
    let option = flags.contains(.maskAlternate)
    let others = flags.contains(.maskCommand) || flags.contains(.maskControl) || flags.contains(.maskShift)
    if option != optionIsDown {
      optionIsDown = option
      if option {
        emit(others ? "downWithOthers" : "down")
      } else {
        lastOptionUp = now
        emit("up")
      }
    } else if option && others {
      emit("other")
    }
  }

  private func emit(_ name: String) {
    DispatchQueue.main.async { [weak self] in self?.onEvent?(name) }
  }
}

// MARK: - Gyorskereső panel

/// A gyorsbillentyűvel előhívott lebegő kereső – mint a Claude „Quick Entry”
/// ablaka: áttetsző, homályosított, lekerekített panel a többi app felett
/// (teljes képernyős appok és minden asztal felett is). Nem aktiválja a
/// WhatStockot, és nem hozza elő a főablakot; csak egy találat megnyitásakor.
final class QuickEntryPanel: NSPanel {
  var keyEquivalentHandler: ((NSEvent) -> Bool)?

  init(size: NSSize) {
    super.init(
      contentRect: NSRect(origin: .zero, size: size),
      styleMask: [.borderless, .nonactivatingPanel],
      backing: .buffered,
      defer: false
    )
    isFloatingPanel = true
    level = .floating
    collectionBehavior = [.canJoinAllSpaces, .fullScreenAuxiliary, .transient, .ignoresCycle]
    isOpaque = false
    backgroundColor = .clear
    hasShadow = true
    hidesOnDeactivate = false
    isMovableByWindowBackground = true
    isReleasedWhenClosed = false
    animationBehavior = .utilityWindow
  }

  // Keret nélküli ablak alapból nem kaphat billentyűzetet.
  override var canBecomeKey: Bool { true }
  override var canBecomeMain: Bool { false }

  override func performKeyEquivalent(with event: NSEvent) -> Bool {
    if keyEquivalentHandler?(event) == true { return true }
    return super.performKeyEquivalent(with: event)
  }
}

/// Egérkattintást át nem vevő réteg (a panel vékony kerete).
final class QuickPassThroughView: NSView {
  override func hitTest(_ point: NSPoint) -> NSView? { nil }
}

/// Egy találat sora: ticker, cégnév, jobb szélén rövid jelölés (★).
final class QuickRowView: NSView {
  let symbolLabel = NSTextField(labelWithString: "")
  let nameLabel = NSTextField(labelWithString: "")
  let detailLabel = NSTextField(labelWithString: "")
  var onHover: (() -> Void)?
  var onClick: (() -> Void)?
  var accent = NSColor.controlAccentColor
  var selected = false {
    didSet { layer?.backgroundColor = selected ? accent.withAlphaComponent(0.28).cgColor : NSColor.clear.cgColor }
  }

  override init(frame frameRect: NSRect) {
    super.init(frame: frameRect)
    wantsLayer = true
    layer?.cornerRadius = 9
    symbolLabel.font = .systemFont(ofSize: 15, weight: .semibold)
    symbolLabel.textColor = .labelColor
    nameLabel.font = .systemFont(ofSize: 14)
    nameLabel.textColor = .secondaryLabelColor
    nameLabel.lineBreakMode = .byTruncatingTail
    detailLabel.font = .systemFont(ofSize: 14)
    detailLabel.textColor = .secondaryLabelColor
    detailLabel.alignment = .right
    addSubview(symbolLabel)
    addSubview(nameLabel)
    addSubview(detailLabel)
  }

  required init?(coder: NSCoder) { fatalError("init(coder:) nem támogatott") }

  override func layout() {
    super.layout()
    let h = bounds.height
    symbolLabel.sizeToFit()
    let symbolWidth = max(64, symbolLabel.frame.width)
    symbolLabel.frame = NSRect(x: 14, y: (h - 20) / 2, width: symbolWidth, height: 20)
    detailLabel.frame = NSRect(x: bounds.width - 54, y: (h - 18) / 2, width: 40, height: 18)
    let nameX = 14 + symbolWidth + 12
    nameLabel.frame = NSRect(x: nameX, y: (h - 18) / 2, width: max(0, detailLabel.frame.minX - 8 - nameX), height: 18)
  }

  override func updateTrackingAreas() {
    super.updateTrackingAreas()
    for area in trackingAreas { removeTrackingArea(area) }
    addTrackingArea(
      NSTrackingArea(rect: .zero, options: [.mouseEnteredAndExited, .activeAlways, .inVisibleRect], owner: self, userInfo: nil)
    )
  }

  override func mouseEntered(with event: NSEvent) { onHover?() }
  override func mouseDown(with event: NSEvent) { onClick?() }
  override func acceptsFirstMouse(for event: NSEvent?) -> Bool { true }
}

/// A gyorskereső panel vezérlője. Dart → natív: `show`, `toggle`, `hide`,
/// `setSuggestions`, `setBusy`, `setMessage`. Natív → Dart: `query` (gépelés),
/// `submit` (Enter / kattintás), `pasteImage` (⌘V képpel), `openWindow`.
final class QuickEntryController: NSObject, NSTextFieldDelegate, NSWindowDelegate {
  static let width: CGFloat = 680
  static let barHeight: CGFloat = 64
  static let rowHeight: CGFloat = 44
  static let maxRows = 6
  static let cornerRadius: CGFloat = 18

  private let channel: FlutterMethodChannel
  private var panelStorage: QuickEntryPanel?
  private let effect = NSVisualEffectView()
  private let border = QuickPassThroughView()
  private let icon = NSImageView()
  private let field = NSTextField()
  private let spinner = NSProgressIndicator()
  private let pasteButton = NSButton()
  private let windowButton = NSButton()
  private let separator = NSBox()
  private let titleLabel = NSTextField(labelWithString: "")
  private let messageLabel = NSTextField(labelWithString: "")
  private var rows: [QuickRowView] = []
  private var items: [[String: String]] = []
  private var itemsQuery = ""
  private var selected = -1
  private var sectionTitle: String?
  private var message: String?
  // A WhatStock kiemelőszíne (#D97757).
  private let accent = NSColor(srgbRed: 0.851, green: 0.467, blue: 0.341, alpha: 1)

  init(channel: FlutterMethodChannel) {
    self.channel = channel
    super.init()
  }

  private var panel: QuickEntryPanel {
    if let p = panelStorage { return p }
    let p = makePanel()
    panelStorage = p
    return p
  }

  func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    let args = call.arguments as? [String: Any] ?? [:]
    switch call.method {
    case "show":
      configure(args)
      show()
      result(nil)
    case "toggle":
      configure(args)
      if panel.isVisible && panel.isKeyWindow { hide() } else { show() }
      result(nil)
    case "hide":
      hide()
      result(nil)
    case "setSuggestions":
      let query = args["query"] as? String ?? ""
      // Közben tovább gépeltek: ez a válasz már elavult.
      guard panelStorage != nil, query == field.stringValue else {
        result(nil)
        return
      }
      let raw = args["items"] as? [[String: Any]] ?? []
      items = raw.prefix(Self.maxRows).map { item in
        [
          "symbol": item["symbol"] as? String ?? "",
          "name": item["name"] as? String ?? "",
          "detail": item["detail"] as? String ?? "",
        ]
      }
      itemsQuery = query
      sectionTitle = args["title"] as? String
      // Üres mezőnél (legutóbbiak) nincs előre kijelölt sor, kereséskor az első.
      selected = items.isEmpty || query.isEmpty ? -1 : 0
      rebuildRows()
      result(nil)
    case "setBusy":
      if args["busy"] as? Bool ?? false {
        spinner.startAnimation(nil)
      } else {
        spinner.stopAnimation(nil)
      }
      result(nil)
    case "setMessage":
      message = args["message"] as? String
      if panelStorage != nil { relayout() }
      result(nil)
    default:
      result(FlutterMethodNotImplemented)
    }
  }

  // MARK: Felépítés

  private func makePanel() -> QuickEntryPanel {
    let p = QuickEntryPanel(size: NSSize(width: Self.width, height: Self.barHeight))
    p.delegate = self
    p.keyEquivalentHandler = { [weak self] event in self?.keyEquivalent(event) ?? false }

    effect.material = .hudWindow
    effect.blendingMode = .behindWindow
    effect.state = .active
    effect.maskImage = Self.roundedMask(radius: Self.cornerRadius)
    effect.autoresizingMask = [.width, .height]
    p.contentView = effect

    border.wantsLayer = true
    border.layer?.cornerRadius = Self.cornerRadius
    border.layer?.borderWidth = 1
    border.layer?.borderColor = NSColor.white.withAlphaComponent(0.12).cgColor

    icon.image = NSApp.applicationIconImage
    icon.imageScaling = .scaleProportionallyUpOrDown

    field.isBordered = false
    field.drawsBackground = false
    field.focusRingType = .none
    field.isEditable = true
    field.isSelectable = true
    field.font = .systemFont(ofSize: 21)
    field.textColor = .labelColor
    field.cell?.usesSingleLineMode = true
    field.cell?.wraps = false
    field.cell?.isScrollable = true
    field.delegate = self

    spinner.style = .spinning
    spinner.controlSize = .small
    spinner.isDisplayedWhenStopped = false

    configureButton(pasteButton, symbol: "photo.on.rectangle", action: #selector(pasteTapped))
    configureButton(windowButton, symbol: "arrow.up.left.and.arrow.down.right", action: #selector(windowTapped))

    separator.boxType = .separator

    titleLabel.font = .systemFont(ofSize: 11, weight: .semibold)
    titleLabel.textColor = .secondaryLabelColor
    messageLabel.font = .systemFont(ofSize: 13)
    messageLabel.textColor = .secondaryLabelColor
    messageLabel.lineBreakMode = .byTruncatingTail

    for view in [icon, field, spinner, pasteButton, windowButton, separator, titleLabel, messageLabel, border] as [NSView] {
      effect.addSubview(view)
    }
    return p
  }

  private func configureButton(_ button: NSButton, symbol: String, action: Selector) {
    button.image = NSImage(systemSymbolName: symbol, accessibilityDescription: nil)
    button.imagePosition = .imageOnly
    button.isBordered = false
    button.bezelStyle = .regularSquare
    button.contentTintColor = .secondaryLabelColor
    button.target = self
    button.action = action
  }

  /// Átméretezhető, lekerekített maszk: így a homályosítás is lekerekített.
  private static func roundedMask(radius: CGFloat) -> NSImage {
    let edge = 2 * radius + 1
    let image = NSImage(size: NSSize(width: edge, height: edge), flipped: false) { rect in
      NSColor.black.setFill()
      NSBezierPath(roundedRect: rect, xRadius: radius, yRadius: radius).fill()
      return true
    }
    image.capInsets = NSEdgeInsets(top: radius, left: radius, bottom: radius, right: radius)
    image.resizingMode = .stretch
    return image
  }

  private func configure(_ args: [String: Any]) {
    let p = panel
    if let placeholder = args["placeholder"] as? String {
      field.placeholderAttributedString = NSAttributedString(
        string: placeholder,
        attributes: [
          .foregroundColor: NSColor.placeholderTextColor,
          .font: field.font ?? NSFont.systemFont(ofSize: 21),
        ]
      )
    }
    if let tip = args["pasteImage"] as? String { pasteButton.toolTip = tip }
    if let tip = args["openWindow"] as? String { windowButton.toolTip = tip }
    if let dark = args["dark"] as? Bool {
      p.appearance = NSAppearance(named: dark ? .darkAqua : .aqua)
      border.layer?.borderColor = (dark ? NSColor.white : NSColor.black).withAlphaComponent(dark ? 0.12 : 0.08).cgColor
    }
  }

  private func rebuildRows() {
    for row in rows { row.removeFromSuperview() }
    rows = []
    for (index, item) in items.enumerated() {
      let row = QuickRowView(frame: .zero)
      row.accent = accent
      row.symbolLabel.stringValue = item["symbol"] ?? ""
      row.nameLabel.stringValue = item["name"] ?? ""
      row.detailLabel.stringValue = item["detail"] ?? ""
      row.onHover = { [weak self] in self?.select(index) }
      row.onClick = { [weak self] in
        self?.select(index)
        self?.submit()
      }
      effect.addSubview(row, positioned: .below, relativeTo: border)
      rows.append(row)
    }
    relayout()
  }

  /// A panel magassága a találatok számához igazodik; a felső éle helyben marad.
  private func relayout() {
    let p = panel
    let w = Self.width
    let hasRows = !rows.isEmpty
    let showMessage = !(message ?? "").isEmpty
    let titleHeight: CGFloat = hasRows && sectionTitle != nil ? 24 : 0
    let listHeight: CGFloat = hasRows ? 8 + titleHeight + CGFloat(rows.count) * Self.rowHeight + 8 : 0
    let messageHeight: CGFloat = showMessage ? 40 : 0
    let h = Self.barHeight + listHeight + messageHeight

    var frame = p.frame
    let top = frame.maxY
    frame.size = NSSize(width: w, height: h)
    frame.origin.y = top - h
    p.setFrame(frame, display: true)
    effect.frame = NSRect(x: 0, y: 0, width: w, height: h)
    border.frame = effect.bounds

    let barY = h - Self.barHeight
    icon.frame = NSRect(x: 18, y: barY + (Self.barHeight - 28) / 2, width: 28, height: 28)
    windowButton.frame = NSRect(x: w - 16 - 26, y: barY + (Self.barHeight - 26) / 2, width: 26, height: 26)
    pasteButton.frame = NSRect(x: windowButton.frame.minX - 6 - 26, y: windowButton.frame.minY, width: 26, height: 26)
    spinner.frame = NSRect(x: pasteButton.frame.minX - 10 - 16, y: barY + (Self.barHeight - 16) / 2, width: 16, height: 16)
    let fieldX: CGFloat = 58
    let fieldHeight: CGFloat = 28
    field.frame = NSRect(
      x: fieldX,
      y: barY + (Self.barHeight - fieldHeight) / 2,
      width: spinner.frame.minX - 8 - fieldX,
      height: fieldHeight
    )

    separator.isHidden = !(hasRows || showMessage)
    separator.frame = NSRect(x: 0, y: barY - 1, width: w, height: 1)

    var y = barY - 8
    titleLabel.isHidden = titleHeight == 0
    if titleHeight > 0 {
      titleLabel.stringValue = (sectionTitle ?? "").uppercased()
      y -= titleHeight
      titleLabel.frame = NSRect(x: 22, y: y + 4, width: w - 44, height: 16)
    }
    for (index, row) in rows.enumerated() {
      y -= Self.rowHeight
      row.frame = NSRect(x: 8, y: y, width: w - 16, height: Self.rowHeight)
      row.selected = index == selected
    }

    messageLabel.isHidden = !showMessage
    if showMessage {
      messageLabel.stringValue = message ?? ""
      messageLabel.frame = NSRect(x: 22, y: 11, width: w - 44, height: 18)
    }
    p.invalidateShadow()
  }

  // MARK: Megjelenítés

  private func show() {
    let p = panel
    message = nil
    position(p)
    relayout()
    p.makeKeyAndOrderFront(nil)
    p.makeFirstResponder(field)
    field.currentEditor()?.selectAll(nil)
    channel.invokeMethod("query", arguments: field.stringValue)
  }

  /// Annak a képernyőnek a felső harmadába, ahol az egér van.
  private func position(_ p: NSPanel) {
    let mouse = NSEvent.mouseLocation
    let screen = NSScreen.screens.first { NSMouseInRect(mouse, $0.frame, false) } ?? NSScreen.main
    guard let visible = screen?.visibleFrame else { return }
    let height = p.frame.height
    let top = visible.maxY - visible.height * 0.22
    p.setFrame(NSRect(x: visible.midX - Self.width / 2, y: top - height, width: Self.width, height: height), display: false)
  }

  private func hide() {
    guard let p = panelStorage, p.isVisible else { return }
    p.orderOut(nil)
  }

  // Máshova kattintva eltűnik, mint a Spotlight.
  func windowDidResignKey(_ notification: Notification) { hide() }

  // MARK: Billentyűzet és egér

  private func select(_ index: Int) {
    guard index >= 0, index < rows.count, index != selected else { return }
    selected = index
    for (i, row) in rows.enumerated() { row.selected = i == index }
  }

  private func move(_ delta: Int) {
    guard !rows.isEmpty else { return }
    let next = selected < 0 ? (delta > 0 ? 0 : rows.count - 1) : (selected + delta + rows.count) % rows.count
    selected = -1
    select(next)
  }

  private func submit() {
    let text = field.stringValue
    var args: [String: Any] = ["text": text]
    if selected >= 0, selected < items.count, itemsQuery == text {
      args["symbol"] = items[selected]["symbol"] ?? ""
    }
    channel.invokeMethod("submit", arguments: args)
  }

  func controlTextDidChange(_ obj: Notification) {
    if message != nil {
      message = nil
      relayout()
    }
    channel.invokeMethod("query", arguments: field.stringValue)
  }

  func control(_ control: NSControl, textView: NSTextView, doCommandBy commandSelector: Selector) -> Bool {
    switch commandSelector {
    case #selector(NSResponder.insertNewline(_:)):
      submit()
      return true
    case #selector(NSResponder.cancelOperation(_:)):
      hide()
      return true
    case #selector(NSResponder.moveDown(_:)):
      move(1)
      return true
    case #selector(NSResponder.moveUp(_:)):
      move(-1)
      return true
    default:
      return false
    }
  }

  /// A panel nem aktiválja az appot, így a főmenü ⌘-billentyűi sem jutnak el
  /// hozzá: a szerkesztés parancsait itt adjuk tovább. ⌘V képpel: felismerés.
  private func keyEquivalent(_ event: NSEvent) -> Bool {
    let flags = event.modifierFlags.intersection(.deviceIndependentFlagsMask).subtracting(.capsLock)
    guard flags == .command, let key = event.charactersIgnoringModifiers?.lowercased() else { return false }
    switch key {
    case "v":
      let pasteboard = NSPasteboard.general
      let hasImage = pasteboard.canReadObject(forClasses: [NSImage.self], options: nil)
      if hasImage && pasteboard.string(forType: .string) == nil {
        pasteTapped()
        return true
      }
      return NSApp.sendAction(#selector(NSText.paste(_:)), to: nil, from: panel)
    case "c":
      return NSApp.sendAction(#selector(NSText.copy(_:)), to: nil, from: panel)
    case "x":
      return NSApp.sendAction(#selector(NSText.cut(_:)), to: nil, from: panel)
    case "a":
      return NSApp.sendAction(#selector(NSText.selectAll(_:)), to: nil, from: panel)
    case "z":
      return NSApp.sendAction(Selector(("undo:")), to: nil, from: panel)
    case "w":
      hide()
      return true
    default:
      return false
    }
  }

  @objc private func pasteTapped() {
    message = nil
    relayout()
    channel.invokeMethod("pasteImage", arguments: nil)
  }

  @objc private func windowTapped() {
    channel.invokeMethod("openWindow", arguments: nil)
  }
}

class MainFlutterWindow: NSWindow {
  /// A gyorskereső panel (a csatorna kezelője is tartja, itt csak a rend kedvéért).
  private var quickEntry: QuickEntryController?

  override func awakeFromNib() {
    let flutterViewController = FlutterViewController()
    let windowFrame = self.frame
    self.contentViewController = flutterViewController
    self.setFrame(windowFrame, display: true)

    RegisterGeneratedPlugins(registry: flutterViewController)

    let channel = FlutterMethodChannel(
      name: "whatstock/option_key",
      binaryMessenger: flutterViewController.engine.binaryMessenger
    )
    let monitor = OptionKeyMonitor.shared
    monitor.onEvent = { name in channel.invokeMethod("option", arguments: name) }
    channel.setMethodCallHandler { call, result in
      switch call.method {
      case "start":
        result(monitor.start())
      case "stop":
        monitor.stop()
        result(nil)
      case "hasPermission":
        result(monitor.hasPermission)
      case "requestPermission":
        result(monitor.requestPermission())
      case "openSettings":
        if let url = URL(string: "x-apple.systempreferences:com.apple.preference.security?Privacy_ListenEvent") {
          NSWorkspace.shared.open(url)
        }
        result(nil)
      default:
        result(FlutterMethodNotImplemented)
      }
    }

    let quickChannel = FlutterMethodChannel(
      name: "whatstock/quick_panel",
      binaryMessenger: flutterViewController.engine.binaryMessenger
    )
    let quick = QuickEntryController(channel: quickChannel)
    quickEntry = quick
    quickChannel.setMethodCallHandler { call, result in quick.handle(call, result: result) }

    let notifications = FlutterMethodChannel(
      name: "whatstock/notifications",
      binaryMessenger: flutterViewController.engine.binaryMessenger
    )
    let notifier = AlertNotifications.shared
    notifier.setUp()
    notifier.onClick = { id in
      NSApp.activate(ignoringOtherApps: true)
      notifications.invokeMethod("clicked", arguments: id)
    }
    notifications.setMethodCallHandler { call, result in
      guard call.method == "show", let args = call.arguments as? [String: Any] else {
        result(FlutterMethodNotImplemented)
        return
      }
      notifier.show(
        id: args["id"] as? String ?? UUID().uuidString,
        title: args["title"] as? String ?? "",
        body: args["body"] as? String ?? ""
      ) { ok in result(ok) }
    }

    super.awakeFromNib()
  }
}
