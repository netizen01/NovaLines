// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NovaLines",
    products: [
        .library(name: "NovaLines", targets: ["NovaLines"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(name: "NovaLines", dependencies: [])
    ]
)
