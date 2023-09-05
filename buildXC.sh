#!/bin/sh

# 基本参数
PROJECT_NAME="SwiftOGG"
SCHEME_NAME="SwiftOGG"
CONFIGURATION="Release" # or Debug if you prefer
OUTPUT_DIR="output"
FRAMEWORK_NAME="SwiftOGG"

# 清理之前的构建
rm -rf $OUTPUT_DIR

# 为真实设备构建框架
xcodebuild archive \
    -scheme $SCHEME_NAME \
    -configuration $CONFIGURATION \
    -destination "generic/platform=iOS" \
    -archivePath "$OUTPUT_DIR/ios_device.xcarchive" \
    SKIP_INSTALL=NO \
    BUILD_LIBRARY_FOR_DISTRIBUTION=YES

# 为模拟器构建框架
xcodebuild archive \
    -scheme $SCHEME_NAME \
    -configuration $CONFIGURATION \
    -destination "generic/platform=iOS Simulator" \
    -archivePath "$OUTPUT_DIR/ios_simulator.xcarchive" \
    SKIP_INSTALL=NO \
    BUILD_LIBRARY_FOR_DISTRIBUTION=YES

# 创建 xcframework
xcodebuild -create-xcframework \
    -framework "$OUTPUT_DIR/ios_device.xcarchive/Products/Library/Frameworks/$FRAMEWORK_NAME.framework" \
    -framework "$OUTPUT_DIR/ios_simulator.xcarchive/Products/Library/Frameworks/$FRAMEWORK_NAME.framework" \
    -output "$FRAMEWORK_NAME.xcframework"

rm -rf $OUTPUT_DIR
echo "✅ .xcframework has been generated in $OUTPUT_DIR"
