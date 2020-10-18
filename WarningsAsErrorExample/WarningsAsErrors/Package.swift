// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WarningsAsErrors",
    products: [
        .library(
            name: "WarningsAsErrors",
            targets: ["WarningsAsErrors"]
        ),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "WarningsAsErrors",
            dependencies: [],
            swiftSettings:[
                .unsafeFlags(["-warnings-as-errors"])
            ]
        ),
    ]
)
