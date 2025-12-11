// swift-tools-version: 5.10
import PackageDescription

let package = Package(
    name: "DWBUtils",
    platforms: [
        .iOS(.v15),
        .macOS(.v12)
    ],
    products: [
        // The umbrella module
        .library(
            name: "DWBUtils",
            targets: ["DWBUtils"]
        ),
        // A submodule, still usable independently
        .library(
            name: "PatternLockKit",
            targets: ["PatternLockKit"]
        )
    ],
    targets: [
        .target(
            name: "DWBUtils",
            dependencies: ["PatternLockKit"] // umbrella depends on submodules
        ),
        .target(
            name: "PatternLockKit",
            dependencies: []
        ),
        .testTarget(
            name: "DWBUtilsTests",
            dependencies: ["DWBUtils"]
        )
    ]
)
