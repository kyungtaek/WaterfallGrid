// swift-tools-version:5.9

//
//  Copyright © 2019 Paolo Leonardi.
//
//  Licensed under the MIT license. See the LICENSE file for more info.
//

import PackageDescription

let package = Package(
    name: "WaterfallGrid",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .tvOS(.v13),
        .visionOS(.v1),
        .watchOS(.v6)
    ],
    products: [
        .library(
            name: "WaterfallGrid",
            targets: ["WaterfallGrid"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "WaterfallGrid",
            dependencies: [], 
            swiftSettings: [
                // Swift 인터페이스 검증 비활성화
                .unsafeFlags(["-no-verify-emitted-module-interface"]),
                // (선택) 인터페이스 생성 자체 비활성화 — 필요시 추가
                // .unsafeFlags(["-enable-library-evolution", "NO"])
            ]
        ),
        .testTarget(
            name: "WaterfallGridTests",
            dependencies: ["WaterfallGrid"]),
    ]
)
