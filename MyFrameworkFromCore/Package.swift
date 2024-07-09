// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyFrameworkFromCore",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "MyFrameworkFromCore",
            type: .dynamic,
            targets: ["MyFrameworkFromCore"]),
    ],
    dependencies: [
//        .package(url: "https://github.com/volodymyr-chekyrta/SampleReusableCore.git", exact: "5.9.1"),
        .package(url: "https://github.com/volodymyr-chekyrta/SampleReusableCore.git", branch: "main")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "MyFrameworkFromCore",
            dependencies: [
                .product(name: "Core", package: "SampleReusableCore"),
            ]
        ),
        .testTarget(
            name: "MyFrameworkFromCoreTests",
            dependencies: ["MyFrameworkFromCore"]),
    ]
)
