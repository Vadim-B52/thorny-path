#!/bin/sh

cd ./SwiftModules
xcrun swift package resolve
cd ..

xcrun xcodebuild \
    -workspace DependenciesFromSPM.xcworkspace \
    -scheme DependenciesFromSPM \
    -derivedDataPath ./LocalDerivedData \
    -clonedSourcePackagesDirPath ./SwiftModules/.build
