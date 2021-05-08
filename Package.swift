// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SBLogging",
    products: [
        .library(name: "SBLogging", targets: ["SBLogging"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "SBLogging", dependencies: []),
        .testTarget(name: "SBLoggingTests", dependencies: ["SBLogging"]),
    ]
)
