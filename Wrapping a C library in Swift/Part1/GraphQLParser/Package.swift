// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GraphQLParser",
    products: [
        .library(
            name: "GraphQLParser",
            targets: ["GraphQLParser"]),
    ],
    dependencies: [
        .package(url: "../Clibgraphqlparser", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "GraphQLParser",
            dependencies: ["Clibgraphqlparser"]),
    ]
)
