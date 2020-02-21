; AutoStart Autohotkey Script

;
; 2-code-snippets.ahk
;

;; Headers
::hhead::
FormatTime, CurrentDateTime,, MM/dd/yy
message = 
(
Purpose:    .
Author:     Stephen Sharp
Date:       %CurrentDateTime%
Notes:      .
)
SendInput %message%
SendInput {left 1}{up 3}
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
