// swift-tools-version: 6.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "spacex",
    targets: [
        .target(
            name: "SpacexCore"
        ),
        .executableTarget(
            name: "spacex",
            dependencies: ["SpacexCore"]
        ),
        .testTarget(
            name: "spacexTests",
            dependencies: ["SpacexCore"]
        ),
    ],
    swiftLanguageModes: [.v6]
)
