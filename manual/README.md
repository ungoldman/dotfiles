# manual

Config that can't be symlinked and needs a one-time manual step.

- `iterm-profile.json` — iTerm2 profile (colors, font, window, status bar).
  Import via Settings > Profiles > Other Actions > Import JSON Profiles, select
  it, then Other Actions > Set as Default. Restart iTerm so the font applies.
  Re-import replaces the profile in place (matched by GUID). Needs the
  `font-hack-nerd-font` cask (in the Brewfile) for the prompt glyphs.

- `windows-terminal-scheme.json` — the same Dracula palette as the iTerm
  profile, in Windows Terminal's `schemes` format. The ANSI values are
  identical, transcribed by index so both terminals render the same ramp.
  Paste it into the `schemes` array of `settings.json`
  (`%LOCALAPPDATA%\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState`
  for the Store build, or Settings > Open JSON file), then set
  `"colorScheme": "Dracula"` on the profile or in `profiles.defaults`.
  Profile GUIDs and the `defaultProfile` are per-install and don't belong in
  this file, so those stay manual too.
