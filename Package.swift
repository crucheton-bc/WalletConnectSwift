// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "WalletConnectSwift",
    platforms: [
        .macOS(.v11), .iOS(.v14),
    ],
    products: [
        .library(
            name: "WalletConnectSwift",
            targets: ["WalletConnectSwift"])
    ],
    dependencies: [
        .package(url: "https://github.com/krzyzanowskim/CryptoSwift.git", .upToNextMinor(from: "1.4.1")),
        .package(url: "https://github.com/daltoniam/Starscream.git", .upToNextMinor(from: "3.1.0"))
    ],
    targets: [
        .target(
            name: "WalletConnectSwift", 
            dependencies: ["CryptoSwift", "Starscream"],
            path: "Sources"
        ),
        .testTarget(
            name: "WalletConnectSwiftTests",
            dependencies: ["WalletConnectSwift"],
            path: "Tests"
        ),
    ],
    swiftLanguageVersions: [.v5]
)
