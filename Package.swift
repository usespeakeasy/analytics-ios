// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Segment",
    platforms: [
        .iOS(.v10), .tvOS(.v10), .macOS(.v10_13)
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "Segment",
            targets: ["Segment"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "Segment",
            dependencies: [],
            path: "Segment",
            sources: ["Classes", "Internal"],
            publicHeadersPath: "Public",
            cSettings: [
                .headerSearchPath("Classes"), // Look in Classes directory for headers
                .headerSearchPath("Internal") // Look in Internal directory for headers
            ]
        )
    ]
)
