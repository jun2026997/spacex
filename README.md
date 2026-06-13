# spacex

A tiny SwiftUI macOS desktop app for checking that the macOS Xcode toolchain,
Swift Package Manager, Git, and GitHub push flow are working.

The app opens a simple window with one button. Click the button to show:

```text
天天哥哥好！
```

## Run

```bash
swift run
```

## Build a macOS App Bundle

```bash
swift build
mkdir -p outputs/Spacex.app/Contents/MacOS
cp .build/debug/spacex outputs/Spacex.app/Contents/MacOS/spacex
cp AppBundle/Info.plist outputs/Spacex.app/Contents/Info.plist
open outputs/Spacex.app
```

## Test

```bash
swift test
```
