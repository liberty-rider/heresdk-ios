// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "heresdk",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "heresdk",
            targets: ["heresdk"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "heresdk",
            url: "https://github.com/liberty-rider/heresdk/releases/download/4.25.4/heresdk.xcframework.zip",
            checksum: "70de3120985ebd7b29d50f4cbd59baddb76ad1a8542642ecfb14f932cefd6360"
        )
    ],
    swiftLanguageModes: [.v5]
)