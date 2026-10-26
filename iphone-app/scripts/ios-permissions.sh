#!/bin/bash
# Adds the iPhone permission messages the app needs (camera, photos, location).
PLIST="ios/App/App/Info.plist"
if [ ! -f "$PLIST" ]; then echo "Run 'npx cap add ios' first."; exit 1; fi
set_key () {
  /usr/libexec/PlistBuddy -c "Delete :$1" "$PLIST" 2>/dev/null
  /usr/libexec/PlistBuddy -c "Add :$1 string $2" "$PLIST"
}
set_key NSCameraUsageDescription "Take photos during the match."
set_key NSPhotoLibraryAddUsageDescription "Save match photos to your Linlithgow Rugby Scores album."
set_key NSPhotoLibraryUsageDescription "Find or create the Linlithgow Rugby Scores album for your match photos."
set_key NSLocationWhenInUseUsageDescription "Check whether you're at Linlithgow to set home or away."
echo "Permissions added."
