_RButton:
  gosub GlobalRButtonStart
return

_RButtonUp:
  gosub _MarkRButtonUp
  gosub GlobalRButtonEnd
return

_RButtonWheelUp:
  gosub _MarkRButtonWheelUp
return

_RButtonWheelDown:
  gosub _MarkRButtonWheelDown
return

_RButtonLButton:
  gosub _MarkRButtonLButton
  if (IsWindowMoveOrResizeAllowed())
  {
    gosub MoveWindow
  }
return

_RButtonLButtonUp:
  gosub _MarkRButtonLButtonUp
return

_RButtonMButton:
  gosub _MarkRButtonMButton
  if (IsWindowMoveOrResizeAllowed())
  {
    gosub ResizeWindow
  }
return

_RButtonMButtonUp:
  gosub _MarkRButtonMButtonUp
return
