// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UIHelpers",
    products: [
        .library(
            name: "UIHelpers",
            targets: ["UIHelpers"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "UIHelpers",
            dependencies: []),
    ]
)
