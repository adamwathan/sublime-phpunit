on runTest(_command)
	tell application "iTerm"
		activate

		set theWindow to current window

		if theWindow is equal to missing value then
			set theWindow to (create window with default profile)
		end if

		tell current session of theWindow
			delay 0.1
			tell application "System Events" to keystroke "k" using {command down}
			tell application "System Events" to keystroke "U" using {control down}

			write text _command
		end tell
	end tell
end runTest

on run argv
	set _command to item 1 of argv
	runTest(_command)
end run
