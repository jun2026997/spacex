import AppKit
import SpacexCore

@main
@MainActor
final class SpacexApp: NSObject, NSApplicationDelegate {
    private var window: NSWindow?
    private let greetingLabel = NSTextField(labelWithString: "点击按钮显示问候")

    static func main() {
        let app = NSApplication.shared
        let delegate = SpacexApp()
        app.delegate = delegate
        app.setActivationPolicy(.regular)
        app.run()
    }

    func applicationDidFinishLaunching(_ notification: Notification) {
        let contentView = NSView(frame: NSRect(x: 0, y: 0, width: 420, height: 240))

        greetingLabel.font = .systemFont(ofSize: 28, weight: .semibold)
        greetingLabel.alignment = .center
        greetingLabel.frame = NSRect(x: 40, y: 132, width: 340, height: 40)
        contentView.addSubview(greetingLabel)

        let button = NSButton(title: "显示问候", target: self, action: #selector(showGreeting))
        button.bezelStyle = .rounded
        button.controlSize = .large
        button.frame = NSRect(x: 150, y: 72, width: 120, height: 36)
        contentView.addSubview(button)

        let window = NSWindow(
            contentRect: NSRect(x: 0, y: 0, width: 420, height: 240),
            styleMask: [.titled, .closable, .miniaturizable, .resizable],
            backing: .buffered,
            defer: false
        )
        window.title = "Spacex"
        window.center()
        window.contentView = contentView
        window.makeKeyAndOrderFront(nil)

        self.window = window
        NSApp.activate(ignoringOtherApps: true)
    }

    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        true
    }

    @objc private func showGreeting() {
        greetingLabel.stringValue = Greeting.message
    }
}
