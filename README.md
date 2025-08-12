# DouYuZB

模仿斗鱼直播App

## Build

- Xcode: open `DouYuZB/DouYuZB.xcodeproj` and run the `DouYuZB` target (iOS Simulator recommended). Code signing is not required for Simulator.
- CLI (macOS):
  - Simulator build: `make build-sim`
  - Device/Release (without signing): `make build`
  - Tests (Simulator): `make test`

## CI

A GitHub Actions workflow is provided at `.github/workflows/ios-build.yml` to build the app on `macos-latest` using the iOS Simulator with code signing disabled.
