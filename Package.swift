// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "jsonlogic-swift",
    products: [
        .library(
            name: "jsonlogic-swift",
            targets: ["jsonlogic-swift"]),
        .executable(
            name: "jsonlogic",
            targets: ["jsonlogic"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/dankogai/swift-json.git", from: "4.0.0"
        )
    ],
    targets: [
        .target(
            name: "jsonlogic-swift",
            dependencies: ["JSON"]),
        .target(
            name: "jsonlogic",
            dependencies: ["jsonlogic-swift"]),
        .testTarget(
            name: "jsonlogic-swiftTests",
            dependencies: ["jsonlogic-swift"])
    ]
)