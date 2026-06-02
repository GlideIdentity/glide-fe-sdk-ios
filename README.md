# Glide Phone Auth SDK for iOS

![Platform](https://img.shields.io/badge/platform-iOS%2015%2B-blue.svg)
![Swift](https://img.shields.io/badge/Swift-5.9%2B-orange.svg)

Carrier-grade phone-number authentication for iOS, distributed as a precompiled binary (XCFramework). Targets the Glide Magical Auth API v2.

## Requirements

- iOS 15.0+
- Swift 5.9+

## Installation

### Swift Package Manager

Add the package to your project:

```
https://github.com/GlideIdentity/glide-fe-sdk-ios
```

or in `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/GlideIdentity/glide-fe-sdk-ios.git", from: "1.0.0")
]
```

### CocoaPods

```ruby
pod 'GlidePhoneAuth'
```

## Quick Start

```swift
import GlidePhoneAuth

let client = PhoneAuthClient(config: GlideAuthConfig(
    endpoints: .init(
        prepare: "https://your-backend.com/api/phone-auth/prepare",
        process: "https://your-backend.com/api/phone-auth/process",
        reportInvocation: "https://your-backend.com/api/phone-auth/report-invocation"
    )
))

// High-level: one call runs the full flow.
let result = try await client.authenticate(
    PrepareRequest(use_case: .getPhoneNumber)
)
```

Glide selects the authentication strategy server-side from the phone number's carrier and the caller's environment, and the SDK handles the returned strategy for you. For the Link strategy, forward the Universal Link callback to the SDK:

```swift
.onOpenURL { url in
    client.handleDeepLink(url)
}
```

## License

Proprietary — see [`LICENSE.txt`](LICENSE.txt). For production licensing, contact support@glideidentity.com.
