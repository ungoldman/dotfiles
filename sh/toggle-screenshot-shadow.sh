# toggle shadow around app window in macos screenshot
function toggle_screenshot_shadow {
  if [ $(defaults read com.apple.screencapture disable-shadow) = true ]
  then
    echo "screenshot shadows on"
    defaults write com.apple.screencapture disable-shadow -bool false; killall SystemUIServer
  else
    echo "screenshot shadows off"
    defaults write com.apple.screencapture disable-shadow -bool true; killall SystemUIServer
  fi
}
