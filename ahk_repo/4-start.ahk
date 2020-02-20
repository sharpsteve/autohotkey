; AutoStart Autohotkey Script

;
; start.ahk
;


#SingleInstance force
#NoEnv ; Avoid checking empty variables. https://autohotkey.com/docs/commands/_NoEnv.htm

; #include, autocorrect.ahk
; #Include, code-snippets.ahk

OpenURL(u) {
	WinActivate, Program Manager
	Run %u%
	return
}

; Export word doc for current page from onenote
^`::
Send !f
Sleep, 300
Send s
Sleep 300
Send {Tab}
Send {Tab} 
Send {Down}
Send {Tab}
Send {Enter}
return

; Export section as word doc
!`::
Send !f
Sleep, 300
Send s
Sleep 300
Send {Tab}
Send {Down}
Send {Tab} 
Send {Down}
Send {Tab}
Send {Enter}
return

; Press Windows Key + C 
#C::OpenURL(clipboard)
+MButton::
clipboard = ; Empty clipboard
Send, ^c
ClipWait, 2
OpenURL(clipboard)
return

; Dates
:R*?:!dd::
FormatTime, CurrentDateTime,, MM/dd/yy
SendInput %CurrentDateTime%
return

:R*?:!xx::
FormatTime, CurrentDateTime,, yyMMddHHmmss
SendInput %CurrentDateTime%
return

:R*?:!aa::
FormatTime, CurrentDateTime,, yyMMdd
SendInput %CurrentDateTime%
return

:R*?:!jd::
FormatTime, CurrentDateTime,, MM-dd-yy
SendInput %CurrentDateTime%
return

:R*?:!yy::
FormatTime, CurrentDateTime,, MM-dd-yy HH:mm
SendInput %CurrentDateTime%
return

; Append date as -MM-DD-YY
:*:mmdy::
FormatTime, CurrentDateTime,, -MM-dd-yy
SendInput %CurrentDateTime%
return

; Append date as -YYYY-MM-DD
:*:yymd::
FormatTime, CurrentDateTime,, -yyyy-MM-dd
SendInput %CurrentDateTime%
return

; General Abbreviations
::aahk::autohotkey

; Reload script with Control Alt R
; ^!r::Reload  ; Assign Ctrl-Alt-R as a hotkey to restart the script.

; Window Commands
Break::WinMinimize, A ; Minimize active window
^CtrlBreak::WinMinimize, A ; Minimize active window
;PrintScreen::WinMinimize, A ; Minimize active window

;  Days of the week
:*:!mon::Monday
:*:!tue::Tuesday
:*:!wed::Wednesday
:*:!thu::Thursday
:*:!fri::Friday
:*:!sat::Saturday
:*:!sun::Sunday 

; Months of the year
:*:!ja::January
:*:!fe::February
:*:!ma::March
:*:!ap::April
:*:!my::May
:*:!ju::June
:*:!jl::July
:*:!au::August
:*:!se::September
:*:!oc::October
:*:!no::November
:*:!de::December

; DDG (Duck duck go)
::!gy::!gyear
::!sy::!syear

; Markdown
; Code Block
:*:mdco::
codeString = ``````
send %codeString%`n
send `n
send %codeString%`n
send {up 2}
return


; Todoist shortcuts

; Shortcut for Hypertext link.
:*:tdhy::
send []()
send {left 3}	; Place cursor inside square brackets.
return

; Code Block
:*:tdco::
codeString = ````
send %codeString%
send {left 1}
return

; Bold
:*:tdbo::
send ****
send {left 2}
return

; Italic
:*:tdit::
send **
send {left 1}
return

; Bold & Italic
:*:tdbi::
send ******
send {left 3}
return

; Text Emojji
:*:!puzzem::¯\_(ツ)_/¯
:*:!hiem::\ (•◡•) /