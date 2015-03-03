on run
  do shell script "open -n /Applications/VLC.app"
  tell application "VLC" to activate
end run

on open theFiles
  repeat with theFile in theFiles
    do shell script "open -na /Applications/VLC.app " & quote & (POSIX path of theFile) & quote
  end repeat
  tell application "VLC" to activate
end open
