# ffmpeg-build
 
[![GitHub Release](https://img.shields.io/github/v/release/mpvkit/ffmpeg-build?display_name=release)](https://github.com/FFmpeg/FFmpeg)
[![license](https://img.shields.io/github/license/mpvkit/ffmpeg-build)](https://github.com/mpvkit/ffmpeg-build/main/LICENSE)

build scripts for [FFmpeg](https://github.com/FFmpeg/FFmpeg)

## Installation

### Swift Package Manager

```
https://github.com/mpvkit/ffmpeg-build.git
```

## How to build

```bash
make build
# build specified platforms 
make build platform=ios,macos
# build GPL version
make build enable-gpl
# see help
make help
```

## License

`ffmpeg-build` source alone is licensed under the LGPL v3.0.

`FFmpeg` bundles (`frameworks`, `xcframeworks`) are also licensed under the LGPL v3.0. However, if the source code is built using the optional `enable-gpl` flag or prebuilt binaries with ``-GPL` postfix are used, then `FFmpeg` bundles become subject to the GPL v3.0.