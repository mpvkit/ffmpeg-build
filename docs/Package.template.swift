// swift-tools-version:5.8

import PackageDescription

let package = Package(
    name: "FFmpeg",
    platforms: [.macOS(.v10_15), .iOS(.v13), .tvOS(.v13)],
    products: [
        .library(
            name: "FFmpeg",
            targets: ["_FFmpeg"]
        ),
        .library(
            name: "FFmpeg-GPL",
            targets: ["_FFmpeg-GPL"]
        ),
    ],
    targets: [
        .target(
            name: "_FFmpeg",
            dependencies: [
                "Libavcodec", "Libavdevice", "Libavfilter", "Libavformat", "Libavutil", "Libswresample", "Libswscale",
                "Libssl", "Libcrypto", "Libass", "Libfreetype", "Libfribidi", "Libharfbuzz",
                "MoltenVK", "Libshaderc_combined", "lcms2", "Libplacebo", "Libdovi", "Libunibreak",
                "gmp", "nettle", "hogweed", "gnutls", "Libdav1d", "Libuavs3d"
            ],
            path: "Sources/_FFmpeg",
            linkerSettings: [
                .linkedFramework("AudioToolbox"),
                .linkedFramework("CoreVideo"),
                .linkedFramework("CoreFoundation"),
                .linkedFramework("CoreMedia"),
                .linkedFramework("Metal"),
                .linkedFramework("VideoToolbox"),
                .linkedLibrary("bz2"),
                .linkedLibrary("iconv"),
                .linkedLibrary("expat"),
                .linkedLibrary("resolv"),
                .linkedLibrary("xml2"),
                .linkedLibrary("z"),
                .linkedLibrary("c++"),
            ]
        ),
        .target(
            name: "_FFmpeg-GPL",
            dependencies: [
                "Libavcodec-GPL", "Libavdevice-GPL", "Libavfilter-GPL", "Libavformat-GPL", "Libavutil-GPL", "Libswresample-GPL", "Libswscale-GPL",
                "Libssl", "Libcrypto", "Libass", "Libfreetype", "Libfribidi", "Libharfbuzz",
                "MoltenVK", "Libshaderc_combined", "lcms2", "Libplacebo", "Libdovi", "Libunibreak",
                "Libsmbclient", "gmp", "nettle", "hogweed", "gnutls", "Libdav1d", "Libuavs3d"
            ],
            path: "Sources/_FFmpeg-GPL",
            linkerSettings: [
                .linkedFramework("AudioToolbox"),
                .linkedFramework("CoreVideo"),
                .linkedFramework("CoreFoundation"),
                .linkedFramework("CoreMedia"),
                .linkedFramework("Metal"),
                .linkedFramework("VideoToolbox"),
                .linkedLibrary("bz2"),
                .linkedLibrary("iconv"),
                .linkedLibrary("expat"),
                .linkedLibrary("resolv"),
                .linkedLibrary("xml2"),
                .linkedLibrary("z"),
                .linkedLibrary("c++"),
            ]
        ),
        .binaryTarget(
            name: "Libavcodec-GPL",
            url: "\(Libavcodec-GPL_url)",
            checksum: "\(Libavcodec-GPL_checksum)"
        ),
        .binaryTarget(
            name: "Libavdevice-GPL",
            url: "\(Libavdevice-GPL_url)",
            checksum: "\(Libavdevice-GPL_checksum)"
        ),
        .binaryTarget(
            name: "Libavformat-GPL",
            url: "\(Libavformat-GPL_url)",
            checksum: "\(Libavformat-GPL_checksum)"
        ),
        .binaryTarget(
            name: "Libavfilter-GPL",
            url: "\(Libavfilter-GPL_url)",
            checksum: "\(Libavfilter-GPL_checksum)"
        ),
        .binaryTarget(
            name: "Libavutil-GPL",
            url: "\(Libavutil-GPL_url)",
            checksum: "\(Libavutil-GPL_checksum)"
        ),
        .binaryTarget(
            name: "Libswresample-GPL",
            url: "\(Libswresample-GPL_url)",
            checksum: "\(Libswresample-GPL_checksum)"
        ),
        .binaryTarget(
            name: "Libswscale-GPL",
            url: "\(Libswscale-GPL_url)",
            checksum: "\(Libswscale-GPL_checksum)"
        ),
        //AUTO_GENERATE_TARGETS_BEGIN//
        //AUTO_GENERATE_TARGETS_END//
    ]
)
