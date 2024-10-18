// swift-tools-version:5.8

import PackageDescription

let package = Package(
    name: "FFmpeg",
    platforms: [.macOS(.v10_15), .iOS(.v13), .tvOS(.v13)],
    products: [
        .library(
            name: "FFmpeg",
            targets: ["FFmpeg"]
        ),
        .library(
            name: "FFmpeg-GPL",
            targets: ["FFmpeg-GPL"]
        ),
    ],
    targets: [
        .target(
            name: "FFmpeg",
            dependencies: [
                "Libavcodec", "Libavdevice", "Libavfilter", "Libavformat", "Libavutil", "Libswresample", "Libswscale",
                "Libssl", "Libcrypto", "Libass", "Libfreetype", "Libfribidi", "Libharfbuzz",
                "MoltenVK", "Libshaderc_combined", "lcms2", "Libplacebo", "Libdovi", "Libunibreak",
                "gmp", "nettle", "hogweed", "gnutls", "Libdav1d", "Libuavs3d"
            ],
            path: "Sources/FFmpeg",
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
            name: "FFmpeg-GPL",
            dependencies: [
                "Libavcodec-GPL", "Libavdevice-GPL", "Libavfilter-GPL", "Libavformat-GPL", "Libavutil-GPL", "Libswresample-GPL", "Libswscale-GPL",
                "Libssl", "Libcrypto", "Libass", "Libfreetype", "Libfribidi", "Libharfbuzz",
                "MoltenVK", "Libshaderc_combined", "lcms2", "Libplacebo", "Libdovi", "Libunibreak",
                "Libsmbclient", "gmp", "nettle", "hogweed", "gnutls", "Libdav1d", "Libuavs3d"
            ],
            path: "Sources/FFmpeg-GPL",
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
            url: "https://github.com/mpvkit/ffmpeg-build/releases/download/7.0.2-fix/Libavcodec-GPL.xcframework.zip",
            checksum: "aed72dc68c7766861461b0660fed5a72c3d1a8b4203271be892f513981f0ffa7"
        ),
        .binaryTarget(
            name: "Libavdevice-GPL",
            url: "https://github.com/mpvkit/ffmpeg-build/releases/download/7.0.2-fix/Libavdevice-GPL.xcframework.zip",
            checksum: "ed338ca567e1727d365b69a5f32903dbeb41c006629ca759fa22f017cbc6153f"
        ),
        .binaryTarget(
            name: "Libavformat-GPL",
            url: "https://github.com/mpvkit/ffmpeg-build/releases/download/7.0.2-fix/Libavformat-GPL.xcframework.zip",
            checksum: "967a6147cc801c5db8cec974cb16370880ac3dc1c9dac4b0288cfddae61508c0"
        ),
        .binaryTarget(
            name: "Libavfilter-GPL",
            url: "https://github.com/mpvkit/ffmpeg-build/releases/download/7.0.2-fix/Libavfilter-GPL.xcframework.zip",
            checksum: "8539d0748ef915a7f29e74d997a763b4c695f999de1182e3fe622744707612ce"
        ),
        .binaryTarget(
            name: "Libavutil-GPL",
            url: "https://github.com/mpvkit/ffmpeg-build/releases/download/7.0.2-fix/Libavutil-GPL.xcframework.zip",
            checksum: "3b277830437b85a597f683a9b3f105ba3b0b78b40b976ef7261371b5161ee62c"
        ),
        .binaryTarget(
            name: "Libswresample-GPL",
            url: "https://github.com/mpvkit/ffmpeg-build/releases/download/7.0.2-fix/Libswresample-GPL.xcframework.zip",
            checksum: "7eae7d46cb4d4f17cbe2e2d7cda9bcd4027acd5bb5ed04329e0b1ce7a42a0509"
        ),
        .binaryTarget(
            name: "Libswscale-GPL",
            url: "https://github.com/mpvkit/ffmpeg-build/releases/download/7.0.2-fix/Libswscale-GPL.xcframework.zip",
            checksum: "983d1657ccb07875372b51d14c12c688ac51097f86ba90fea0e545659fb31034"
        ),
        //AUTO_GENERATE_TARGETS_BEGIN//

        .binaryTarget(
            name: "Libcrypto",
            url: "https://github.com/mpvkit/openssl-build/releases/download/3.2.0/Libcrypto.xcframework.zip",
            checksum: "89989ea14f7297d98083eb8adfba9b389f5b4886cb54fb3d5b6e8b915b7adf1d"
        ),
        .binaryTarget(
            name: "Libssl",
            url: "https://github.com/mpvkit/openssl-build/releases/download/3.2.0/Libssl.xcframework.zip",
            checksum: "46ad8e8fa5a6efe7bd31c9b3c56b20c1bc29a581083588d86e941d261d7dbe98"
        ),

        .binaryTarget(
            name: "gmp",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.3/gmp.xcframework.zip",
            checksum: "defd5623e6786543588001b8f33026395960a561540738deb6df6996d39f957d"
        ),

        .binaryTarget(
            name: "nettle",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.3/nettle.xcframework.zip",
            checksum: "c3b8f506fa32bcb3f9bf65096b0556c4f5973f846ee964577d783edbe8e6969d"
        ),
        .binaryTarget(
            name: "hogweed",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.3/hogweed.xcframework.zip",
            checksum: "47a34e7877f7ebd9175f5645059030e553276faa9a21b91e29fb7463b94e8daf"
        ),

        .binaryTarget(
            name: "gnutls",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.3/gnutls.xcframework.zip",
            checksum: "5f5cf903a2d52157c29ad304260709f618ce086afea02061241982f8425a6fb0"
        ),

        .binaryTarget(
            name: "Libunibreak",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3/Libunibreak.xcframework.zip",
            checksum: "430ed1a8ff1a230bd93b6868021cde2aafb23c8cb2d586525836cac47c4f310f"
        ),

        .binaryTarget(
            name: "Libfreetype",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3/Libfreetype.xcframework.zip",
            checksum: "300d2966c914e06f0211d8da0ea6208a345709b888e9cbbf1cdd94df26330359"
        ),

        .binaryTarget(
            name: "Libfribidi",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3/Libfribidi.xcframework.zip",
            checksum: "4a3122a2027f021937ed0fa07173dca7f2c1c4c4202b7caf8043fa80408c0953"
        ),

        .binaryTarget(
            name: "Libharfbuzz",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3/Libharfbuzz.xcframework.zip",
            checksum: "f607773598caa72435d8b19ce6a9d54fa7f26cde126b6b66c0a3d2804f084c68"
        ),

        .binaryTarget(
            name: "Libass",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3/Libass.xcframework.zip",
            checksum: "af24cd1429069153f0ca5c650e0b374c27ae38283aca47cbbbc9edb3165b182e"
        ),

        .binaryTarget(
            name: "Libsmbclient",
            url: "https://github.com/mpvkit/libsmbclient-build/releases/download/4.15.13/Libsmbclient.xcframework.zip",
            checksum: "589db9c241e6cc274f2825bee542add273febd0666ebd7ea8a402574ed76e9af"
        ),

        .binaryTarget(
            name: "Libuavs3d",
            url: "https://github.com/mpvkit/libuavs3d-build/releases/download/1.2.1/Libuavs3d.xcframework.zip",
            checksum: "893257fc73c61b87fb45ee9de7df6ac4a6967062d7cac2c8d136cd2774a04971"
        ),

        .binaryTarget(
            name: "Libdovi",
            url: "https://github.com/mpvkit/libdovi-build/releases/download/3.3.0/Libdovi.xcframework.zip",
            checksum: "ca4382ea4e17103fbcc979d0ddee69a6eb8967c0ab235cb786ffa96da5f512ed"
        ),

        .binaryTarget(
            name: "MoltenVK",
            url: "https://github.com/mpvkit/moltenvk-build/releases/download/1.2.9/MoltenVK.xcframework.zip",
            checksum: "02dd7f51814855b7db9eacd883042b3e9481eb658de6bc63290af80149f2b94f"
        ),

        .binaryTarget(
            name: "Libshaderc_combined",
            url: "https://github.com/mpvkit/libshaderc-build/releases/download/2024.2.0/Libshaderc_combined.xcframework.zip",
            checksum: "1ccd9fce68ea29af030dceb824716fc16d1f4dcdc0b912ba366d5cb91d7b1add"
        ),

        .binaryTarget(
            name: "lcms2",
            url: "https://github.com/mpvkit/libplacebo-build/releases/download/7.349.0/lcms2.xcframework.zip",
            checksum: "bd2c27366f8b7adfe7bf652a922599891c55b82f5c519bcc4eece1ccff57c889"
        ),

        .binaryTarget(
            name: "Libplacebo",
            url: "https://github.com/mpvkit/libplacebo-build/releases/download/7.349.0/Libplacebo.xcframework.zip",
            checksum: "f32d20351289a080cd7288742747cd927553fde8c217f63263b838083d07a01a"
        ),

        .binaryTarget(
            name: "Libdav1d",
            url: "https://github.com/mpvkit/libdav1d-build/releases/download/1.4.3/Libdav1d.xcframework.zip",
            checksum: "eccfe37da9418e350bc6c1566890fa5b9585fbb87b8ceb664de77800ef17fe04"
        ),

        .binaryTarget(
            name: "Libavcodec",
            url: "https://github.com/mpvkit/ffmpeg-build/releases/download/7.0.2-fix/Libavcodec.xcframework.zip",
            checksum: "95131a80650916d533a6fe79d32ee04213b531355398fd8de119aa0f21ffa31a"
        ),
        .binaryTarget(
            name: "Libavdevice",
            url: "https://github.com/mpvkit/ffmpeg-build/releases/download/7.0.2-fix/Libavdevice.xcframework.zip",
            checksum: "e9177c1466b8332af27f6c15c0db469d5e56f5666c85491ca93055f2f999900a"
        ),
        .binaryTarget(
            name: "Libavformat",
            url: "https://github.com/mpvkit/ffmpeg-build/releases/download/7.0.2-fix/Libavformat.xcframework.zip",
            checksum: "06fec5bc381d64eac45c17bb7724ce41a38dba0fcbe98ac5669c5015b4dd6078"
        ),
        .binaryTarget(
            name: "Libavfilter",
            url: "https://github.com/mpvkit/ffmpeg-build/releases/download/7.0.2-fix/Libavfilter.xcframework.zip",
            checksum: "8ad31d6eff33bd1e8499af981fec5abce6ef40601735eac06c431d6eef5c42f2"
        ),
        .binaryTarget(
            name: "Libavutil",
            url: "https://github.com/mpvkit/ffmpeg-build/releases/download/7.0.2-fix/Libavutil.xcframework.zip",
            checksum: "3964079be2c0c0dd8fbb1e196468c03960f6c31be1d26d829ad0623d7fcc8aaa"
        ),
        .binaryTarget(
            name: "Libswresample",
            url: "https://github.com/mpvkit/ffmpeg-build/releases/download/7.0.2-fix/Libswresample.xcframework.zip",
            checksum: "f327f377147414c40ea11945b75194bf9ae4d6c038d43bd2c6adda8977b1ba82"
        ),
        .binaryTarget(
            name: "Libswscale",
            url: "https://github.com/mpvkit/ffmpeg-build/releases/download/7.0.2-fix/Libswscale.xcframework.zip",
            checksum: "02a5630b04d9a70fa695f87ac3cbeea00bfc129e28e1cd77d762d52c5bd54cdb"
        ),
        //AUTO_GENERATE_TARGETS_END//
    ]
)
