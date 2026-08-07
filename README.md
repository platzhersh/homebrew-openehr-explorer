# homebrew-openehr-explorer

Homebrew tap for [openEHR Explorer](https://github.com/platzhersh/openehr-explorer), a cross-platform desktop app for browsing, querying, and inspecting openEHR CDR instances.

## Install

```bash
brew install --cask platzhersh/openehr-explorer/openehr-explorer
```

## Update

```bash
brew upgrade --cask openehr-explorer
```

## Note on Gatekeeper

Releases aren't notarized by Apple yet (tracked in [openehr-explorer#OEH-7](https://github.com/platzhersh/openehr-explorer)). On first launch you may need to run:

```bash
xattr -cr "/Applications/openEHR Explorer.app"
```

The cask install prints this same instruction as a caveat.

## Maintenance

The cask formula in `Casks/openehr-explorer.rb` is kept in sync automatically by a workflow in the main repo (`.github/workflows/homebrew-cask.yml`), which runs on every `v*` release tag and pushes an updated version/sha256 here.
