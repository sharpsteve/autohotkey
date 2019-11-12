; Purpose:  Opening a link in non-default browser
; Author:   Jackie Sztuk _Blackholyman
; Date:     11/12/19
; Notes:    https://autohotkey.com/board/topic/84792-opening-a-link-in-non-default-browser/

^RButton:: [color=#008040]; Ctrl+Right mouse button[/color]
Clip_All := ClipboardAll  [color=#008040]; Save the entire clipboard to a variable[/color]
Clipboard := ""  [color=#008040]; Empty the clipboard to allow ClipWait work[/color]

Click Right [color=#008040]; Click Right mouse button[/color]
Sendinput [color=#FF0080]r[/color] [color=#008040]; Send the underlined key that copy's the link from the right click menu[/color]
ClipWait [color=#008040]; Wait for the clipboard to contain text.[/color]

Run, C:\Users\%A_UserName%\AppData\Local\Google\Chrome\Application\chrome.exe %clipboard% [color=#008040]; Open in Google Chrome[/color]
[color=#008040];Run, %A_ProgramFiles%\Mozilla Firefox\firefox.exe %clipboard%[/color] [color=#008000]; open in Firefox[/color]

Clipboard := Clip_All [color=#008040]; Restore the original clipboard[/color]
Return
