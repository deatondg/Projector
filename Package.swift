// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "Projector",
    products: [
        .library(name: "Projector", targets: ["Projector"]),
    ],
    dependencies: [
        .package(url: "https://github.com/tadija/AEXML", .upToNextMinor(from: "4.5.0")),
        .package(name: "FastPathKit", url: "https://github.com/deatondg/PathKit", .branch("master")),
    ],
    targets: [
        .target(name: "Projector",
                dependencies: [
                    "FastPathKit",
                    "AEXML",
                ]),
        .testTarget(name: "ProjectorTests", dependencies: ["Projector"]),
    ]
)
