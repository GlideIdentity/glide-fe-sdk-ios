// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "GlidePhoneAuth",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "GlidePhoneAuth",
            targets: ["GlidePhoneAuth"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "GlidePhoneAuth",
            url: "https://github.com/GlideIdentity/glide-fe-sdk-ios/releases/download/1.0.0/GlidePhoneAuth.xcframework.zip",
            checksum: "d7b3ae2e9c6e08643177c29abb1b330ef3af271a93d3db4850a23b04c0e77916"
        ),
    ]
)
