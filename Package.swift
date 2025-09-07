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
            url: "https://github.com/ccxt-native/swift/releases/download/v0.0.2/CCXTCore.xcframework.zip",
            checksum: "11efa2d9345d74c8e951403dece7d30c3051f5a73166d05d8184bb546a4d9246"
        ),
        .target(
            name: "CCXT",
            dependencies: ["CCXTCore"],
            path: "Sources/CCXT"
        )
    ]
)
