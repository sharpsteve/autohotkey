; AutoStart Autohotkey Script for code snippets

;; Header
::hhead::
FormatTime, CurrentDateTime,, MM/dd/yy
message = Purpose:`t`t`nAuthor:`t`tStephen Sharp`nDate:`t`t%CurrentDateTime%`nNotes:`n
SendInput %message%
return

;; Note line
::nnote::
FormatTime, CurrentDateTime,, MM/dd/yy
message = %CurrentDateTime%{space}{space}SJS{space}{space}
SendInput %message%
return

; Rhapsody mapper
:*:!mtr::trace("***** ");{left 3}


;; JSDoc header
::jsh::
message = 
(
/**
 * [descrip]
 * @param  {[type]} arg1 [description]
 * @return {[type]}      [description]
 */
)
SendInput %message%
return

;; JSDoc param
::jsp::
message =  
(
    * @param  {[type]} arg1 [description]
)
SendInput %message%
return
