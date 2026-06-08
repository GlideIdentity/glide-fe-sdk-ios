// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "GlidePhoneAuth",
    platforms: [.iOS(.v15)],
    products: [.library(name: "GlidePhoneAuth", targets: ["GlidePhoneAuth"])],
    targets: [
        .binaryTarget(
            name: "GlidePhoneAuth",
            url: "https://github.com/GlideIdentity/glide-fe-sdk-ios/releases/download/3.0.0/GlidePhoneAuth.xcframework.zip",
            checksum: "9dab781f30c20876a0e98eae202adc282e497da40e7767d6da70c9ad2ec95074"
        ),
    ]
)
