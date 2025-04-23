// Package.swift
// swift-tools-version: 6.1

import PackageDescription

let package = Package(
    name: "MyPackage",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v18),
        .macOS(.v15)
    ],
    products: [
        .library(
            name: "MyPackage",
            targets: ["MyPackage"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/danielsaidi/EmojiKit.git",
            .upToNextMajor(from: "1.6.0")
        )
    ],
    targets: [
        .target(
            name: "MyPackage",
            dependencies: ["EmojiKit"],
            resources: [.process("Resources")]
       ),
        .testTarget(
            name: "MyPackageTests",
            dependencies: ["MyPackage"]
        )
    ]
)
