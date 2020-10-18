// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Modules",
    products: [
        .library(
            name: "Umbrella",
            type: .dynamic,
            targets: [
                "UICardViewController",
                "UIComponents",
                "UIHelpers",
            ]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "UICardViewController",
            dependencies: [
                "UIComponents",
                "UIHelpers",
            ]),
        .target(
            name: "UIComponents",
            dependencies: []),
        .target(
            name: "UIHelpers",
            dependencies: []),
    ]
)
