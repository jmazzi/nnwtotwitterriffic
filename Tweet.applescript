-- Author: Justin Mazzi
-- Site: http://github.com/jmazzi/nnwtotwitterriffic
tell application "NetNewsWire"
	set theUrl to (URL of selectedHeadline)
	set defaultText to title of selectedHeadline
	set prefixText to the text returned of (display dialog "What do you want to say before the link?" default answer defaultText & ": ")
	set theMessage to prefixText & " " & theUrl
end tell

tell application "Twitterrific"
	activate
	post update theMessage
end tell