// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UICardViewController",
    products: [
        .library(
            name: "UICardViewController",
            targets: ["UICardViewController"]),
    ],
    dependencies: [
        .package(path: "../UIComponents"),
        .package(path: "../UIHelpers"),
    ],
    targets: [
        .target(
            name: "UICardViewController",
            dependencies: [
                "UIComponents",
                "UIHelpers",
            ]),
    ]
)
