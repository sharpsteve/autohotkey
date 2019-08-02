;#Include %A_ScriptDir%  ; Changes the working directory for subsequent #Includes and FileInstalls.
;#Include CustomMsgBox.ahk

DisplayBiggerWindow(windowTitle)
{
    WinGetPos, currentX, currentY, currentWidth, currentHeight, %windowTitle%

    newWidth := ((A_ScreenWidth/4) * 3)
    newHeight := ((A_ScreenHeight/4) * 3)

    newX := (A_ScreenWidth / 2) - (newWidth)
    newY := (A_ScreenHeight / 2) - (newHeight)

    ; Testing
    ; messageBoxText := "A_ScreenWidth: " . A_ScreenWidth . ", A_ScreenHeight: " . A_ScreenHeight . "`nnewX: " . newX . ", newY: " . newY . "`nCurrent Width: " . currentWidth . ", Current Height: " . currentHeight . "`nX: " . newX . ", Y: " . newY . "`nWidth: " . newWidth . ", Height: " . newHeight
    ; CustomMsgBox("Testing", %messageBoxText%, "Segoe UI", "s16")
    ;CustomMsgBox("Testing", "Just a test!", "Segoe UI", "s16")
    ; MsgBox, "Test",  %messageBoxText%
    WinMove, %windowTitle%,, newX, newY, newWidth, newHeight
}


; The following function centers the specified window on the screen:
CenterWindow(WinTitle)
{
    WinGetPos,,, Width, Height, %WinTitle%
    WinMove, %WinTitle%,, (A_ScreenWidth/2)-(Width/2), (A_ScreenHeight/2)-(Height/2)
}

; Testing
;DisplayBiggerWindow("Untitled - Notepad")
