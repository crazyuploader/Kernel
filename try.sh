#!/usr/bin/env bash

# Kernel Auto Upstream

# Variables
GITHUB_REF="github.com/crazyuploader/Whyred-Kernel.git"

git config --global user.email "49350241+crazyuploader@users.noreply.github.com"
git config --global user.name "crazyuploader"
git clone "https://${GITHUB_REF}" kernel
cd kernel || exit 1

echo ""
git fetch https://github.com/android-linux-stable/msm-4.4 kernel.lnx.4.4.r38-rel
git checkout kernel-eas
git merge FETCH_HEAD
echo ""
git push https://crazyuploader:"${GITHUB_TOKEN}"@"${GITHUB_REF}" HEAD:kernel-eas
echo ""
echo "Done"

echo ""
git checkout kernel-eas-oc
git fetch https://github.com/android-linux-stable/msm-4.4 kernel.lnx.4.4.r38-rel
git merge FETCH_HEAD
echo ""
git push https://crazyuploader:"${GITHUB_TOKEN}"@"${GITHUB_REF}" HEAD:kernel-eas-oc
echo ""
echo "Done"

echo ""
git checkout kernel-hmp
git fetch https://github.com/android-linux-stable/msm-4.4 kernel.lnx.4.4.r38-rel
git merge FETCH_HEAD
echo ""
git push https://crazyuploader:"${GITHUB_TOKEN}"@"${GITHUB_REF}" HEAD:kernel-hmp
echo ""
echo "Done"
