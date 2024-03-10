

rm -rf XCFrameworks/*.xcframework


cd /Users/surya-15302/Work/POCs/XCFrameworkSetup/DepsSDK

xcodebuild archive -scheme DepsSDK -destination="generic/platform=iOS" -archivePath archive/iphoneos.xcarchive -sdk iphoneos SKIP_INSTALL=NO BUILD_LIBRARIES_FOR_DISTRIBUTION=YES
xcodebuild archive -scheme DepsSDK -destination="generic/platform=iOS Simulator" -archivePath archive/iphonesimulator.xcarchive -sdk iphonesimulator SKIP_INSTALL=NO BUILD_LIBRARIES_FOR_DISTRIBUTION=YES
xcodebuild -create-xcframework -framework archive/iphoneos.xcarchive/Products/Library/Frameworks/DepsSDK.framework -framework archive/iphonesimulator.xcarchive/Products/Library/Frameworks/DepsSDK.framework -output  /Users/surya-15302/Work/POCs/XCFrameworkSetup/XCFrameworks/DepsSDK.xcframework

rm -rf archive


cd /Users/surya-15302/Work/POCs/XCFrameworkSetup/MainSDK

xcodebuild archive -scheme MainSDK -destination="generic/platform=iOS" -archivePath archive/iphoneos.xcarchive -sdk iphoneos SKIP_INSTALL=NO BUILD_LIBRARIES_FOR_DISTRIBUTION=YES
xcodebuild archive -scheme MainSDK -destination="generic/platform=iOS Simulator" -archivePath archive/iphonesimulator.xcarchive -sdk iphonesimulator SKIP_INSTALL=NO BUILD_LIBRARIES_FOR_DISTRIBUTION=YES
xcodebuild -create-xcframework -framework archive/iphoneos.xcarchive/Products/Library/Frameworks/MainSDK.framework -framework archive/iphonesimulator.xcarchive/Products/Library/Frameworks/MainSDK.framework -output  /Users/surya-15302/Work/POCs/XCFrameworkSetup/XCFrameworks/MainSDK.xcframework

rm -rf archive
