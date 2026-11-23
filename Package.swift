// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "GlidePhoneAuth",
    platforms: [.iOS(.v15)],
    products: [.library(name: "GlidePhoneAuth", targets: ["GlidePhoneAuth"])],
    targets: [
        .binaryTarget(
            name: "GlidePhoneAuth",
            url: "https://github.com/GlideIdentity/glide-fe-sdk-ios/releases/download/3.2.0/GlidePhoneAuth.xcframework.zip",
            checksum: "c6302799b2671675fbd56c1c2a76f424fbba42a91ec2acdb0a99420a8d3e2f1b"
        ),
    ]
)
