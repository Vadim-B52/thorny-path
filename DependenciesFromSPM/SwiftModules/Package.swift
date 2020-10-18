// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftModules",
    platforms: [.iOS(.v11)],
    products: [
        .library(
            name: "Features",
            targets: [
                "FeatureA",
                "FeatureB",
            ]),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire", from: "5.0.0"),
    ],
    targets: [
        .target(
            name: "FeatureA",
            dependencies: ["Alamofire"]),
        .target(
            name: "FeatureB",
            dependencies: ["Alamofire"]),
    ]
)
