; Example usage
; Choice:=MsgBox_SelectString("Title","Select a string.","One|Two|Three|Four|Five")
; If !Choice
; 	MsgBox,You didn't choose!
; Else
; 	MsgBox,You chose "%Choice%".
; ExitApp


MsgBox_SelectString(Title,Message,Strings)
{
	Gui,55:Add,Text,,%Message%
	Gui,55:Add,ListBox,%Size%,%Strings%
	GuiControlGet,Box,55:Pos,ListBox1
	Gui,55:Add,Button,% "Default g55OK w75 y+10 xp+" (BoxW / 2) - 38,OK
	
	Gui,55:-MinimizeBox
	Gui,55:-MaximizeBox
	
	Gui,55:Show,,%Title%
	Gui,55:+LastFound
	WinWaitClose
	Gui,55:Destroy
	return Result
	
	55OK:
	GuiControlGet,Selected,55:,ListBox1
	Result:=Selected
	Gui,55:Destroy
	return ;This won't end the function, just the g55OK thread.
}