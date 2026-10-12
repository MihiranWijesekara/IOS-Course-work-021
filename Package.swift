// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "IOSCW",
    platforms: [
        .iOS(.v16),
        .macOS(.v13)
    ],
    products: [
        .library(
            name: "IOSCW",
            targets: ["IOSCW"]
        )
    ],
    targets: [
        .target(
            name: "IOSCW",
            path: "Sources/IOSCW"
        )
    ]
)
