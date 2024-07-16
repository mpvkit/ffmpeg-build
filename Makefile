# make only accept argument format: xxxx=xxxx, other format will treat as a target.
# add [enable-split-platform enable-debug] to .PHONY can ignore target not exist error.
.PHONY: help build clean enable-split-platform enable-debug

help:
	@echo "Usage: make [target]"
	@echo ""
	@echo "Targets:"
	@echo "  build [arguments]     Build the project for iOS and macOS"
	@echo "                        Arguments:"
	@echo "                            platform=ios,macos        Only build specified platform (ios,macos,tvos,tvsimulator,isimulator,maccatalyst)"
	@echo "                            enable-split-platform     Enable split platform build"
	@echo "  clean                 Clean the build artifacts"
	@echo "  help                  Display this help message"

build:
	swift run --build-path ./.build --package-path Sources/BuildScripts build $(filter-out $@,$(MAKECMDGOALS)) $(MAKEFLAGS)

clean:
	@rm -rf ./.build
	@rm -rf ./dist
	@rm -rf ./*.log