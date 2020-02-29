#!/bin/sh
exec <"$0" || exit; read v; read v; exec /usr/bin/osascript - "$@"; exit
# The line above allows the rest of the file to be written in plain AppleScript.

# Figure out what app is active
set frontmost_app to name of (info for (path to frontmost application))
 
tell application "Google Chrome"
  activate
  tell application "System Events"
    tell process "Google Chrome"
      keystroke "r" using {command down, shift down}
    end tell
  end tell
end tell

# Send the focus back to the previous frontmost app
tell application frontmost_app
  activate
end tell
 
