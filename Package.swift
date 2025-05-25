// swift-tools-version: 5.7

import PackageDescription

let package = Package(
  name: "SauTunnelKit",
  products: [
    .library(
        name: "SauTunnelKit",
        targets: ["SauTunnelKit"]
    ),
    .library(
        name: "SauTunnelKitC",
        targets: ["SauTunnelKitC"]
    )
  ],
  targets: [
    .target(
        name: "SauTunnelKit",
        dependencies: ["SauTunnel", "SauTunnelKitC"]
    ),
    .target(
        name: "SauTunnelKitC",
        publicHeadersPath: "."
    ),
    .binaryTarget(
        name: "SauTunnel",
        url: "https://github.com/saudevteam/sau_proxy/releases/download/2.13.0/SauTunnel.xcframework.zip",
        checksum: "7bef6596184ebf7fbc1a60ca83d35fa26e91e111a252801dd0118cde0adbd137"
    )
  ]
)
