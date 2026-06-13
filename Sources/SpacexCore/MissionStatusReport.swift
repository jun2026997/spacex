import Foundation

public struct MissionStatusReport {
    public let title: String
    public let generatedAt: Date
    public let systemName: String
    public let swiftVersion: String

    public init(
        title: String,
        generatedAt: Date,
        systemName: String,
        swiftVersion: String
    ) {
        self.title = title
        self.generatedAt = generatedAt
        self.systemName = systemName
        self.swiftVersion = swiftVersion
    }

    public static func current(date: Date = Date()) -> MissionStatusReport {
        MissionStatusReport(
            title: "SpaceX macOS dev check",
            generatedAt: date,
            systemName: ProcessInfo.processInfo.operatingSystemVersionString,
            swiftVersion: "Swift 6"
        )
    }

    public func render() -> String {
        let formatter = ISO8601DateFormatter()
        return """
        \(title)
        Generated: \(formatter.string(from: generatedAt))
        System: \(systemName)
        Toolchain: \(swiftVersion)
        Status: Ready for launch.
        """
    }
}
