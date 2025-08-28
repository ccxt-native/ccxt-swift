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
            url: "https://github.com/ccxt-native/swift/releases/download/release/CCXTCore.xcframework.zip",
            checksum: "45623be518e6930d2b2b457858bdbbe0815c0953bdf2d1f466ca1bf8d3683e0e"
        ),
        .target(
            name: "CCXT",
            dependencies: ["CCXTCore"],
            path: "Sources/CCXT"
        )
    ]
)
