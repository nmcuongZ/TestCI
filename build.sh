#! /bin/sh

project="Simple Mobile Placeholder"

echo "Attempting to build $project for Windows"
/Applications/Unity/Unity.app/Contents/MacOS/Unity \
  -batchmode \
  -nographics \
  -silent-crashes \
  -logFile $(pwd)/unity.log \
  -projectPath $(pwd) \
  -buildWindowsPlayer "$(pwd)/Build/IOS/$project.app" \
  -quit

echo 'Logs from build'
cat $(pwd)/unity.log


