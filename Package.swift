// swift-tools-version:5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SBLogging",
    platforms: [.iOS(.v13), .tvOS(.v13), .macOS(.v10_15), .watchOS(.v6)],
    products: [
        .library(name: "SBLogging", targets: ["SBLogging"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "SBLogging", dependencies: []),
        .testTarget(name: "SBLoggingTests", dependencies: ["SBLogging"]),
    ]
)
