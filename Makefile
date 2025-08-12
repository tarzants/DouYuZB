# Simple iOS project helpers
.PHONY: build build-sim test clean

XCODEPROJ=DouYuZB/DouYuZB.xcodeproj
TARGET=DouYuZB

build:
	set -euo pipefail; \
	xcodebuild -project $(XCODEPROJ) -target $(TARGET) -configuration Release CODE_SIGNING_ALLOWED=NO build

build-sim:
	set -euo pipefail; \
	xcodebuild -project $(XCODEPROJ) -target $(TARGET) -configuration Debug -sdk iphonesimulator -destination 'generic/platform=iOS Simulator' CODE_SIGNING_ALLOWED=NO build

test:
	set -euo pipefail; \
	xcodebuild -project $(XCODEPROJ) -target $(TARGET) -sdk iphonesimulator -destination 'platform=iOS Simulator,name=iPhone 15' CODE_SIGNING_ALLOWED=NO test

clean:
	xcodebuild -project $(XCODEPROJ) -target $(TARGET) clean