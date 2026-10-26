# Linlithgow Rugby Scores: iPhone app

This folder turns the score keeper into a real iPhone app. On the iPhone version, every photo
goes straight into a **Linlithgow Rugby Scores** album in Photos, and sharing and location work reliably.

## What you need (one-off)

1. **Xcode** from the Mac App Store (free, large download).
2. **Node.js** (the LTS version) from https://nodejs.org
3. **CocoaPods**: open Terminal and run `sudo gem install cocoapods`
   (or `brew install cocoapods` if you use Homebrew).
4. Open Xcode once, accept the licence, and sign in with your Apple ID under
   Xcode > Settings > Accounts.

## Build it (about 10 minutes the first time)

Unzip this folder, open Terminal, `cd` into it, then run:

```
npm install @capacitor/core @capacitor/cli @capacitor/ios @capacitor/share @capacitor/filesystem @capacitor/geolocation @capacitor-community/media
npm install -D @capacitor/assets
npm run setup
npm run icons
npm run open
```

`npm run open` opens the project in Xcode. Then:

1. Click **App** in the left sidebar, then the **Signing & Capabilities** tab.
2. Under **Team**, pick your Apple ID.
   If it says the bundle ID is taken, change `com.linlithgowrugby.scores` to something unique,
   such as `com.yourname.linlithgowrugby`.
3. Plug your iPhone in with a cable, choose it at the top of the window, and press the Play button.
4. First time only, on the iPhone: Settings > General > VPN & Device Management, trust your Apple ID.
   Also turn on Settings > Privacy & Security > Developer Mode if it asks.

## Good to know

- **Free Apple ID:** the app works on your own phone but must be reinstalled from Xcode every 7 days.
- **Paid Apple Developer Program (about £79 a year):** the app lasts a year, and you can send it to
  other parents through **TestFlight**. In Xcode: Product > Archive, then Distribute App > TestFlight.
- **Making changes:** if the app is updated, replace `www/index.html`, then run `npm run sync`
  and press Play in Xcode again.
- **Storage:** matches are saved on the phone. They aren't backed up to your Claude account
  in the iPhone version, so don't delete the app unless you're happy to lose them.

## If something goes wrong

- *"peer dependency" error during npm install:* run the first install line again with `@7`
  after each `@capacitor/...` package name, for example `@capacitor/core@7`.
- *CocoaPods error on `npm run setup`:* install CocoaPods (step 3 above) and run `npm run setup` again.
- *Photos aren't saving:* Settings > Linlithgow Rugby > Photos, choose Full Access.
