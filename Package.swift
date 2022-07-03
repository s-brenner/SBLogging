// swift-tools-version:5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SBLogging",
    platforms: [.iOS(.v14), .tvOS(.v14), .macOS(.v11), .watchOS(.v7)],
    products: [
        .library(name: "SBLogging", targets: ["SBLogging"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "SBLogging", dependencies: []),
        .testTarget(name: "SBLoggingTests", dependencies: ["SBLogging"]),
    ]
)
