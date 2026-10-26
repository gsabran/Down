// swift-tools-version:6.0

import PackageDescription

let package = Package(
    name: "Down",
    platforms: [
        .iOS("15.0"),
        .macOS("12.0"),
    ],
    products: [
        .library(
            name: "Down",
            targets: ["Down"]
        )
    ],
    targets: [
        .target(
            name: "libcmark",
            dependencies: [],
            path: "libcmark",
            exclude: [
              "include",
            ],
            publicHeadersPath: "./"
        ),
        .target(
            name: "Down",
            dependencies: ["libcmark"],
            path: "Source",
            exclude: ["Down.h"],
          resources: [
            .copy("../Resources/DownView.bundle"),
          ]
        ),
    ],
    swiftLanguageModes: [.v5]
)
