# Release Notes
This file documents the release notes for each version of the Millicast Objective C SDK iOS Sample App (SA) in Swift.
SA APIs refer to public methods provided by the SA class, MillicastManager.

## 1.4.1 (2022-11-07)
Upgraded to use SDK 1.4.1 (no bitcode), synced Android & iOS SA, added stats logging and improved documentation.
### Major changes
- Upgraded to new SDK 1.4.1 (no bitcode).
  - Updated bitcode settings to be **not** enabled for all targets.
- Greatly synchronised MillicastManager code between Android and iOS SAs, including:
  - Variable, state and method names.
  - Init, Publisher & Subscriber connect/disconnect, start/stop methods.
  - Methods categorised into similar sections.
- Added examples for reading and logging stats reports for both publishing and subscribing.
- Every class now has a brief documentation on its purpose.
### Fixed
- N.A.
### Known issues
- As before.

## 1.3.1 (2022-09-07)
Upgraded to use SDK 1.3.1, improved CredentialSource related code, fixed returning from background issue, and fixed applied Subscribe streamname error on reload.
### Major changes
- Upgraded to new SDK 1.3.1.
- Improved CredentialSource related code.
  - Logic for determining credentials on SA start isolated to MillicastManager.
  - CredentialSource types explained in code.
- Updated readme on background mode and manual framework installation steps.
### Fixed
- Fixed the issue where tvOS devices may stop subscribing and lose connection to Millicast after returning from the background.
- Fixed an error in which the Subscribe streamname applied on SA reload differed from the previously saved value.
### Known issues
- As before.

## 1.3.0 (2022-08-16)
Upgraded to use SDK 1.3.0 (bitcode only for tvOS), improved Settings view, major code restructuring, added Subscribe Token usage, and fixed occasional subscribing freeze.
### Major changes
- Upgraded to new SDK 1.3.0.
  - Updated bitcode settings:
    - Bitcode **not** enabled for iOS target.
    - Bitcode enabled for tvOS target.
- Added UI and implementation for Subscribe Token usage.
- Improved functionality and ease of use of the Millicast Settings view.
  - Settings fields change color to alert user when UI value differs from applied value.
  - Able to reload applied values to UI.
  - Able to keep unsaved UI values across view changes.
  - Refactored CredentialSource and related credentials setting code for greater clarity.
- Major restructuring of MillicastManager for media option handling, code organization, matching of Android SA style, queuing/threading and logging.
- Updated SA logo.
### Fixed
- Fixed Subscribe view freeze with empty credentials.
### Known issues
- As before.

## 1.0.2 (2022-07-13)
Upgraded to use SDK 1.2.0, improved listener logging, fixed occasional media lists related crashes.
### Major changes
- Upgraded to new SDK 1.2.0.
- Standardized and improved logging of Publisher & Subscriber listeners.
### Fixed
- Fixed occasional crashes where media lists exist but are of size 0.
### Known issues
- As before.

## 1.0.1 (2022-02-16)
Upgraded to use SDK 1.1.3, added CocoaPods and Swift Package Manager installation of SDK, SA documentation and removed Objective C bridging header.
### Major changes
- Added support for CocoaPods and Swift Package Manager (SPM) installation of SDK.
  - All 3 methods (CocoaPods, SPM, manual framework addition) of SDK installation are supported.
  - Open project using SwiftSa.xcworkspace instead of SwiftSa.xcodeproj.
  - Refer to ***README.md*** for usage details.
- Upgraded to new SDK 1.1.3.
  - Removed Objective C bridging header as SDK headers are now exported via umbrella header that Swift can see by using ```import MillicastSDK```.
- Upgraded to new features of SDK 1.1:
  - New WebRTC Stats API
  - New Option for Client & Publisher classes.
- Added SA documentation under ***docs/iOS*** and ***docs/tvOS***
- Added volume control for iOS Subscribe view.
### Fixed
- N.A.
### Known issues
- As before.

## 1.0.0 (2021-09-30)
This is the first release of the Millicast Objective C SDK iOS Sample App (SA) in Swift.
### Known issues
- If H264 is set as preferred codec, higher resolutions (e.g. 1920x1440, 2592x1936, 3264x2448) may not be published.
  - This might be device dependent.
  - Publishing with VP8 and VP9 is possible.
