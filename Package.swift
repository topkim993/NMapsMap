// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NMapsMap",
    products: [
        .library(
            name: "NMapsMap",
            targets: [
                "NMapsMap",
                "NMapsGeometryBinary"
            ]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/topkim993/NMapsGeometry",
            .branchItem("main")
        )
    ],
    targets: [
        .binaryTarget(
            name: "NMapsMap",
            path: "framework/NMapsMap.xcframework"
        ),
        .target(
            name: "NMapsGeometryBinary",
            dependencies: [
                "NMapsGeometry"
            ]
        )
    ]
)
