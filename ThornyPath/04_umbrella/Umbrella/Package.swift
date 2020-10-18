// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Umbrella",
    products: [
        .library(
            name: "Umbrella",
            targets: ["Umbrella"]),
    ],
    dependencies: [
        .package(path: "../UICardViewController"),
        .package(path: "../UIComponents"),
        .package(path: "../UIHelpers"),
    ],
    targets: [
        .target(
            name: "Umbrella",
            dependencies: [
                "UICardViewController",
                "UIComponents",
                "UIHelpers",
            ]),
    ]
)
