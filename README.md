Sample project for <https://github.com/realm/realm-cocoa/issues/3170>

Unable to reproduce so far.

1. `pod install`.
2. `open RealmGH3170.xcworkspace`.
3. `CMD-U` with `FrameworkB` selected.

Tests run succesfully, mapping over objects from `FrameworkB.framework` of a
model defined in a different module (`RealmGH3170.framework`).
