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

class MainFlutterWindow: NSWindow {
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
