// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RevoltKit",
    products: [
        .library(
            name: "RevoltKit",
            targets: ["RevoltKit"]),
    ],
    dependencies: [
      .package(url: "https://github.com/Flight-School/AnyCodable", from: "0.6.1"),
    ],
    targets: [
        .target(
            name: "RevoltKit",
            dependencies: []),
        .testTarget(
            name: "RevoltKitTests",
            dependencies: ["RevoltKit"]),
    ]
)
