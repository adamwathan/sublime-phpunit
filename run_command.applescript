on execInNewTab(_title, _command)
  tell application "Terminal"
    activate
    set settings to "Basic"
    set currentTab to do script _command
  end
end execInNewTab

on execInTerminalTab(_command, _window, _tab)
  tell application "Terminal"
    activate
    set frontmost of _window to true
    set selected of _tab to true
    do script "clear" in tab 1 of window 1
    do script _command in tab 1 of window 1
  end
end execInTerminalTab

on run argv
  set _command to item 1 of argv
  set _foundTab to false
  set _expected_title to (item 2 of argv)

  if length of argv is 2
    tell application "Terminal"
      repeat with w in windows
        tell w
          repeat with t in tabs
            set _foundTab to true
            set _window to w
            set _tab to t
            exit repeat
          end repeat
        end tell

        if _foundTab then
          exit repeat
        end if
      end repeat
    end tell

    if _foundTab then
      execInTerminalTab(_command, _window, _tab)
    else
      execInNewTab(_expected_title, _command)
    end if
  end if
end run
