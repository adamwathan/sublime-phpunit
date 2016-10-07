on runTest(_command)
	tell application "iTerm"
		activate

		set theWindow to current window

		if theWindow is equal to missing value then
			set theWindow to (create window with default profile)
		end if

		tell current session of theWindow
			write text ";clear;" & _command
		end tell
	end tell
end runTest

on run argv
	set _command to item 1 of argv
	runTest(_command)
end run
