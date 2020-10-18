// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftModules",
    products: [
        .library(
            name: "Features",
            targets: [
                "FeatureA",
                "FeatureB",
            ]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "FeatureA",
            dependencies: [
                "MyNetwork",
            ]),
        .target(
            name: "FeatureB",
            dependencies: [
                "MyNetwork",
            ]),
        .target(
            name: "MyNetwork",
            dependencies: []),
    ]
)
