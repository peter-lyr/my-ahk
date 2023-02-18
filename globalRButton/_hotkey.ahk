#Include %A_ScriptDir%\globalRButton\_mark.ahk
#Include %A_ScriptDir%\globalRButton\_start.ahk
#Include %A_ScriptDir%\globalRButton\_end.ahk

_RButton:
  gosub GlobalRButtonStart
return

_RButtonUp:
  gosub _MarkRButtonUp
  gosub GlobalRButtonEnd
  click Right
return

_RButtonWheelUp:
  gosub _MarkRButtonWheelUp
return

_RButtonWheelDown:
  gosub _MarkRButtonWheelDown
return

_RButtonLButton:
  gosub _MarkRButtonLButton
return

_RButtonLButtonUp:
  gosub _MarkRButtonLButtonUp
return

_RButtonMButton:
  gosub _MarkRButtonMButton
return

_RButtonMButtonUp:
  gosub _MarkRButtonMButtonUp
return
