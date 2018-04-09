#!/bin/sh
set -e
git-repo/gradlew --build-file git-repo/build.gradle build
cp git-repo/build/libs/*.jar build-output/