; Example usage
; CustomMsgBox("Title","This MsgBox has a red font!","Segoe UI","s14, cRed")
; CustomMsgBox("Title","This MsgBox has a blue italic Tahoma font!","Tahoma","cBlue Italic")
; CustomMsgBox("Title","This MsgBox has a white font and black background!!","","cWhite","Black")
; CustomMsgBox("Title","This MsgBox has a black Lucida Console font and horrible yellow background!","Lucida Console","cBlack","Yellow")
; ExitApp


CustomMsgBox(Title,Message,Font="",FontOptions="",WindowColor="")
{
	Gui,66:Destroy
	Gui,66:Color,%WindowColor%
	
	Gui,66:Font,%FontOptions%,%Font%
	Gui,66:Add,Text,,%Message%
	Gui,66:Font
	
	GuiControlGet,Text,66:Pos,Static1
	
	Gui,66:Add,Button,% "Default y+10 w75 g66OK xp+" (TextW / 2) - 38 ,OK
	
	Gui,66:-MinimizeBox
	Gui,66:-MaximizeBox
	
	SoundPlay,*-1
	Gui,66:Show,,%Title%
	
	Gui,66:+LastFound
	WinWaitClose
	Gui,66:Destroy
	return
	
	66OK:
	Gui,66:Destroy
	return
}