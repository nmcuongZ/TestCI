#! /bin/sh

curl -o Unity.pkg http://netstorage.unity3d.com/unity/b7e030c65c9b/MacEditorInstaller/Unity-5.4.2f2.pkg
curl -o Unity-iOS.pkg http://netstorage.unity3d.com/unity/b7e030c65c9b/MacEditorTargetInstaller/UnitySetup-iOS-Support-for-Editor-5.4.2f2.pkg
sudo installer -dumplog -package Unity.pkg -target /
sudo installer -dumplog -package Unity-iOS.pkg -target /