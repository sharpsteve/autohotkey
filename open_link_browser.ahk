#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetTitleMatchMode, 2

# https://autohotkey.com/board/topic/112386-script-to-open-links-from-chrome-apps-in-firefox-instead-of-chrome/

#IfWinActive Asana  ; If using normal Chrome Browser, Replace "Asana" with "Google Chrome". If another Chrome Application shortcut, replace with name of that app
~RButton::
sleep, 500
Send, e
Sleep 200 
variablewithURL:=clipboard
Run, C:\Program Files (x86)\Mozilla Firefox\firefox.exe "%variablewithURL%" 
Return

#IfWinActive Asana
^RButton::RButton
Return
