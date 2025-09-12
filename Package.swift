// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "CCXT",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "CCXT",
            type: .static,
            targets: ["CCXT"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "CCXTCore",
            // path: "Sources/CCXTCore/CCXTCore.xcframework",  // for local development
            url: "https://github.com/ccxt-native/ccxt-swift/releases/download/v0.0.3/CCXTCore.xcframework.zip",
            checksum: "f52dfa3761ff3b0479bd4f62235b0b1288d3d853234acfaa8933e2d58036c5d4"
        ),
        .target(
            name: "CCXT",
            dependencies: ["CCXTCore"],
            path: "Sources/CCXT"
        )
    ]
)
