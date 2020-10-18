// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ExamplePackage",
    products: [
        .executable( name: "Superapp", targets: ["SuperApplication"]),
        .library(name: "FoodKit", targets: ["FoodOrder", "OrderHistory"]),
    ],
    dependencies: [.package(url: "https://github.com/Alamofire/Alamofire", from: "5.3.0")],
    targets: [
        .target(name: "SuperApplication", dependencies: ["FoodOrder", "OrderHistory", "TaxiOrder"]),
        .target(name: "TaxiOrder", dependencies: ["Alamofire", "UIComponents"]),
        .target(name: "FoodOrder", dependencies: ["Alamofire", "UIComponents"]),
        .target(name: "OrderHistory", dependencies: ["Alamofire", "UIComponents"]),
        .target(name: "UIComponents")
    ]
)
