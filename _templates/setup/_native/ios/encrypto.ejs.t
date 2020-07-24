---
inject: true
to: ios/temp/Info.plist
after: <dict>
skip_if: <key>NSCalendarsUsageDescription</key>
---
	<key>ITSAppUsesNonExemptEncryption</key>
	<false/>