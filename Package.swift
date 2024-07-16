// swift-tools-version:5.8

import PackageDescription

let package = Package(
    name: "FFmpeg",
    platforms: [.macOS(.v10_15), .iOS(.v13), .tvOS(.v13)],
    products: [
        .library(
            name: "FFmpeg",
            type: .static,
            targets: ["_FFmpeg"]
        ),
        .library(
            name: "FFmpeg-GPL",
            type: .static,
            targets: ["_FFmpeg-GPL"]
        ),
    ],
    targets: [
        .target(
            name: "_FFmpeg",
            dependencies: [
                "Libavcodec", "Libavfilter", "Libavformat", "Libavutil", "Libswresample", "Libswscale",
                "Libssl", "Libcrypto", "Libass", "Libfreetype", "Libfribidi", "Libharfbuzz",
                "MoltenVK", "Libshaderc_combined", "lcms2", "Libplacebo", "Libdovi", "Libunibreak",
                "gmp", "nettle", "hogweed", "gnutls", "Libdav1d"
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
                "Libavcodec-GPL", "Libavfilter-GPL", "Libavformat-GPL", "Libavutil-GPL", "Libswresample-GPL", "Libswscale-GPL",
                "Libssl", "Libcrypto", "Libass", "Libfreetype", "Libfribidi", "Libharfbuzz",
                "MoltenVK", "Libshaderc_combined", "lcms2", "Libplacebo", "Libdovi", "Libunibreak",
                "Libsmbclient", "gmp", "nettle", "hogweed", "gnutls", "Libdav1d"
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
            url: "https://github.com/mpvkit/ffmpeg-build/releases/download/7.0.1/Libavcodec-GPL.xcframework.zip",
            checksum: "1d2dcd60513ea147e5be927a5ece0bbc95290483bac27c69969cc0a3e6289b0c"
        ),
        .binaryTarget(
            name: "Libavformat-GPL",
            url: "https://github.com/mpvkit/ffmpeg-build/releases/download/7.0.1/Libavformat-GPL.xcframework.zip",
            checksum: "959855721c9ae84a707fd4e471bf1a8dabc0a5bd754bd5845556d8dc8ee37ea3"
        ),
        .binaryTarget(
            name: "Libavfilter-GPL",
            url: "https://github.com/mpvkit/ffmpeg-build/releases/download/7.0.1/Libavfilter-GPL.xcframework.zip",
            checksum: "c081f87e2f201c8074ddfef097924c6fb661c724c5bfdde4fb95bf05930b3576"
        ),
        .binaryTarget(
            name: "Libavutil-GPL",
            url: "https://github.com/mpvkit/ffmpeg-build/releases/download/7.0.1/Libavutil-GPL.xcframework.zip",
            checksum: "73f2681a235ba1f9fe0ed391751acfa858a70666119578697d6217166f0d04ba"
        ),
        .binaryTarget(
            name: "Libswresample-GPL",
            url: "https://github.com/mpvkit/ffmpeg-build/releases/download/7.0.1/Libswresample-GPL.xcframework.zip",
            checksum: "a769366947e379699d4f40297b178fa596c0ad6fbc7d34538910633ece70b497"
        ),
        .binaryTarget(
            name: "Libswscale-GPL",
            url: "https://github.com/mpvkit/ffmpeg-build/releases/download/7.0.1/Libswscale-GPL.xcframework.zip",
            checksum: "ffff3632ce85f8ec806c7daee121714e8b642f3cb393b3941d7bf98ba3dccbf3"
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
            checksum: "4e6c464136044a989990866060849885e75fe8d51e40c3eaa0df905031e72de3"
        ),

        .binaryTarget(
            name: "nettle",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.3/nettle.xcframework.zip",
            checksum: "36236b6ade0e0dacc394f30ec5bb9b6094b9d030a7c7c629b1808a5d6aca5f7b"
        ),
        .binaryTarget(
            name: "hogweed",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.3/hogweed.xcframework.zip",
            checksum: "f37d1d826a7d31ce8d5e05e7c8a05d73ed7d96ef7462d6232eeaebab785ea058"
        ),

        .binaryTarget(
            name: "gnutls",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.3/gnutls.xcframework.zip",
            checksum: "afbe9925bd0b6843e3cdd9122803ef7c107ae16761707c5aa506ec16c46928ff"
        ),

        .binaryTarget(
            name: "Libunibreak",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3/Libunibreak.xcframework.zip",
            checksum: "48956d3f3acdbb5a81e47cf8884f7e22ee73e2042ae63112cb43419cf9da338f"
        ),

        .binaryTarget(
            name: "Libfreetype",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3/Libfreetype.xcframework.zip",
            checksum: "d71f43c615f1d7b40e7204da1f552c8a2060a4d4e4a9021b9e048f4f86f9afc8"
        ),

        .binaryTarget(
            name: "Libfribidi",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3/Libfribidi.xcframework.zip",
            checksum: "e6cbcccf697d6401d1d57d5459a285bdbd2f1ab8b7d1f8acf373352a86b3b5af"
        ),

        .binaryTarget(
            name: "Libharfbuzz",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3/Libharfbuzz.xcframework.zip",
            checksum: "581a15bc38d2cfc400a143309a20b8d0a5d7a0654bb65e961279989d95f3bdfb"
        ),

        .binaryTarget(
            name: "Libass",
            url: "https://github.com/mpvkit/libass-build/releases/download/0.17.3/Libass.xcframework.zip",
            checksum: "51b548e30d6db0c8c64d88930a3eebe5bfc7d5333592b29589f4efdf1aa50e69"
        ),

        .binaryTarget(
            name: "Libsmbclient",
            url: "https://github.com/mpvkit/libsmbclient-build/releases/download/4.15.13/Libsmbclient.xcframework.zip",
            checksum: "8d41191700d950563d1b0e738fb1865ed07acf0690839d0c0484a67173821c8c"
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
            url: "https://github.com/mpvkit/libshaderc-build/releases/download/2024.1.0/Libshaderc_combined.xcframework.zip",
            checksum: "f6267f62881e9496608069266ba52b025bcfcd6ec5859d02d780feeabfacc947"
        ),

        .binaryTarget(
            name: "lcms2",
            url: "https://github.com/mpvkit/libplacebo-build/releases/download/7.349.0/lcms2.xcframework.zip",
            checksum: "64edeb9da07cd19fa8f488ed776d5a07aa8839f62d63812af722e0d92c19ab0d"
        ),

        .binaryTarget(
            name: "Libplacebo",
            url: "https://github.com/mpvkit/libplacebo-build/releases/download/7.349.0/Libplacebo.xcframework.zip",
            checksum: "ab71618032cfd3236a1b266e210c5fd5abad0304d75a700046c6e7f18c57851e"
        ),

        .binaryTarget(
            name: "Libdav1d",
            url: "https://github.com/mpvkit/libdav1d-build/releases/download/1.4.3/Libdav1d.xcframework.zip",
            checksum: "eccfe37da9418e350bc6c1566890fa5b9585fbb87b8ceb664de77800ef17fe04"
        ),

        .binaryTarget(
            name: "Libavcodec",
            url: "https://github.com/mpvkit/MPVKit/releases/download/7.0.1/Libavcodec.xcframework.zip",
            checksum: "16a49ce9df67691a566b6af896185c92df898cff2e55ab6b1fb76a0fd2ddb766"
        ),
        .binaryTarget(
            name: "Libavformat",
            url: "https://github.com/mpvkit/MPVKit/releases/download/7.0.1/Libavformat.xcframework.zip",
            checksum: "15bd6eea56e24c243f24ac7aa3e3887c2f80173a922484a7df527c1d721254ba"
        ),
        .binaryTarget(
            name: "Libavfilter",
            url: "https://github.com/mpvkit/MPVKit/releases/download/7.0.1/Libavfilter.xcframework.zip",
            checksum: "f426211c6f274f801f02857b59692cacac31c3ed3ea2ca22ec80360fd551ba4c"
        ),
        .binaryTarget(
            name: "Libavutil",
            url: "https://github.com/mpvkit/MPVKit/releases/download/7.0.1/Libavutil.xcframework.zip",
            checksum: "b644ce5e55e248518f898861884bd4ee6f6c046d7c0e684a5382d28f8100cba0"
        ),
        .binaryTarget(
            name: "Libswresample",
            url: "https://github.com/mpvkit/MPVKit/releases/download/7.0.1/Libswresample.xcframework.zip",
            checksum: "47740b6c758b6842155e80184336404ac483f8ed8ab9757c74524469904180e8"
        ),
        .binaryTarget(
            name: "Libswscale",
            url: "https://github.com/mpvkit/MPVKit/releases/download/7.0.1/Libswscale.xcframework.zip",
            checksum: "676016fc14b34d42ae41531ccabfbf4ca81a225ed1db890f563ea47327755a28"
        ),
        //AUTO_GENERATE_TARGETS_END//
    ]
)
