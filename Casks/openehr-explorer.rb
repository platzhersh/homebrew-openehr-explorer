cask "openehr-explorer" do
  version "0.6.0"
  sha256 "c9689f85ee001dfd92567fce1da0cba44846994667c60d9de34a1bc53b1906eb"

  url "https://github.com/platzhersh/openehr-explorer/releases/download/v#{version}/openEHR.Explorer_#{version}_universal.dmg"
  name "openEHR Explorer"
  desc "Browse, query, and inspect any openEHR CDR"
  homepage "https://platzhersh.github.io/openehr-explorer/"

  depends_on macos: :catalina

  app "openEHR Explorer.app"

  zap trash: [
    "~/Library/Application Support/com.openehr-explorer",
    "~/Library/Caches/com.openehr-explorer",
    "~/Library/Preferences/com.openehr-explorer.plist",
    "~/Library/Saved Application State/com.openehr-explorer.savedState",
  ]

  # TODO(OEH-7): remove this caveat once release builds are notarized.
  caveats <<~EOS
    openEHR Explorer is not yet notarized by Apple. On first launch, macOS
    Gatekeeper will report the app as damaged. To fix this, run:

      xattr -cr "/Applications/openEHR Explorer.app"

    Then open the app normally. This is a one-time step per install.
  EOS
end