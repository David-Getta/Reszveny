import Cocoa
import CoreGraphics
import FlutterMacOS

/// Az Option billentyű figyelése a dupla Option-nyomáshoz (mint a Claude-ban).
///
/// Listen-only event tap a módosítókra: a homokozóban (App Sandbox) is működik,
/// ha a felhasználó megadja a „Bemenetfigyelés” (Input Monitoring) engedélyt.
/// Engedély nélkül csak akkor jelez, amikor a StockLens van előtérben.
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
      name: "stocklens/option_key",
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

    super.awakeFromNib()
  }
}
