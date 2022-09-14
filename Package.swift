// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AssociationKit",
    platforms: [.iOS(.v13), .macOS(.v11), .watchOS(.v6), .tvOS(.v13)],
    products: [
        .library(
            name: "AssociationKit",
            targets: ["AssociationKit"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "AssociationKit",
            dependencies: []
        ),

        .testTarget(
            name: "AssociationKitTests",
            dependencies: ["AssociationKit"]
        )
    ]
)
