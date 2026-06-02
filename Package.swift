// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "4.25.4"
let moduleName = "heresdk"
let checksum = "70de3120985ebd7b29d50f4cbd59baddb76ad1a8542642ecfb14f932cefd6360"

let package = Package(
    name: moduleName,
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: moduleName,
            targets: [moduleName]
        )
    ],
    targets: [
        .binaryTarget(
            name: moduleName,
            url: "https://github.com/liberty-rider/heresdk/releases/download/\(version)/\(moduleName).xcframework.zip",
            checksum: checksum
        )
    ]
)