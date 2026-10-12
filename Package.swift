// swift-tools-version: 5.9
import PackageDescription

// Binary target: the xcframework is not stored in this repository. It is downloaded from the
// heresdk.xcframework.zip asset of the GitHub Release named after the git tag (X.Y.Z).
// For each new version, update `url`, `checksum` and the version comment below.
// scripts/publish.sh does this.
let package = Package(
    name: "heresdk",
    platforms: [.iOS(.v16)],
    products: [
        .library(name: "heresdk", targets: ["heresdk"])
    ],
    targets: [
        .binaryTarget(
            name: "heresdk",
            // GitHub Release 4.28.0 (HERE SDK 4.28.0.0), asset heresdk.xcframework.zip
            url: "https://github.com/liberty-rider/heresdk-ios/releases/download/4.28.0/heresdk.xcframework.zip",
            checksum: "8fd71c6ab21f6d6c2d341d46b625cb3565e5e5c125c2c229752adbc7d572523d"
        )
    ]
)
