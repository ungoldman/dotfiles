# manual

Config that can't be symlinked and needs a one-time manual step.

- `iterm-profile.json` — iTerm2 profile (colors, font, window, status bar).
  Import via Settings > Profiles > Other Actions > Import JSON Profiles, select
  it, then Other Actions > Set as Default. Restart iTerm so the font applies.
  Re-import replaces the profile in place (matched by GUID). Needs the
  `font-hack-nerd-font` cask (in the Brewfile) for the prompt glyphs.
