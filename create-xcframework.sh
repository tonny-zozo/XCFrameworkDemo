#!/bin/sh

rm -r build

xcodebuild archive \
    -project XCFramework/XCFramework.xcodeproj \
    -scheme XCFramework \
    -destination "generic/platform=iOS" \
    -archivePath "build/archives/XCFramework-iOS" \
    SKIP_INSTALL=NO \
    BUILD_LIBRARY_FOR_DISTRIBUTION=YES

xcodebuild archive \
    -project XCFramework/XCFramework.xcodeproj \
    -scheme XCFramework \
    -destination "generic/platform=iOS Simulator" \
    -archivePath "build/archives/XCFramework-iOS_Simulator" \
    SKIP_INSTALL=NO \
    BUILD_LIBRARY_FOR_DISTRIBUTION=YES

xcodebuild -create-xcframework \
    -archive build/archives/XCFramework-iOS.xcarchive -framework XCFramework.framework \
    -archive build/archives/XCFramework-iOS_Simulator.xcarchive -framework XCFramework.framework \
    -output build/xcframeworks/XCFramework.xcframework
