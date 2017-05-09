#! /bin/sh

project="Simple Mobile Placeholder"

echo "Attempting to build $project for iOS"
/Applications/Unity/Unity.app/Contents/MacOS/Unity \
  -batchmode \
  -silent-crashes \
  -username "nmcuong22@yahoo.com.vn" \
  -password "Helloworld123" \
  -logFile $(pwd)/unity.log \
  -projectPath $(pwd) \
  -executeMethod CommandLineBuild.iOSBuild \
  -quit

echo 'Logs from build'
cat $(pwd)/unity.log 

cd Builds/iOS
xcodebuild -project Unity-iPhone.xcodeproj -scheme Unity-iPhone clean build CONFIGURATION_BUILD_DIR=$CIRCLE_ARTIFACTS


