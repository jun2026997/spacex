import Foundation
import Testing
@testable import SpacexCore

@Test func example() async throws {
    let report = MissionStatusReport(
        title: "Test mission",
        generatedAt: Date(timeIntervalSince1970: 0),
        systemName: "macOS",
        swiftVersion: "Swift 6"
    )

    let output = report.render()

    #expect(output.contains("Test mission"))
    #expect(output.contains("1970-01-01T00:00:00Z"))
    #expect(output.contains("Ready for launch."))
}
