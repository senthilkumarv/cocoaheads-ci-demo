#!/bin/bash

xcodebuild -workspace Calculator.xcworkspace -scheme Calculator -configuration Release -sdk iphoneos clean build CODE_SIGN_ENTITY="iPhone Developer: Senthil Kumar V (M29CCF4G2Y)" CODE_SIGNING_REQUIRED=YES
xcrun -sdk iphoneos PackageApplication -v Build/Products/Release-iphoneos/Calculator.app -o /tmp/Calculator-${GO_PIPELINE_COUNTER}.ipa
