Boat:
  tooltip Direction: %Direction%`nRButtonPressCnt: %RButtonPressCnt%`nRButtonTimerCnt: %RButtonTimerCnt%`nMarkFlagRButtonAll: %MarkFlagRButtonAll%`nMarkFlagRButtonLButton: %MarkFlagRButtonLButton%`nMarkFlagRButtonLButtonDown: %MarkFlagRButtonLButtonDown%`nMarkFlagRButtonLButtonUp: %MarkFlagRButtonLButtonUp%`nMarkFlagRButtonMButton: %MarkFlagRButtonMButton%`nMarkFlagRButtonMButtonDown: %MarkFlagRButtonMButtonDown%`nMarkFlagRButtonMButtonUp: %MarkFlagRButtonMButtonUp%`nMarkFlagRButtonUp: %MarkFlagRButtonUp%`nMarkFlagRButtonUpCancel: %MarkFlagRButtonUpCancel%`nMarkFlagRButtonWheel: %MarkFlagRButtonWheel%`nMarkFlagRButtonWheelDown: %MarkFlagRButtonWheelDown%`nMarkFlagRButtonWheelUp: %MarkFlagRButtonWheelUp%`n
return

RButtonWatcher:
  GetKeyState, RButtonSta, RButton, P
  if (RButtonSta == "U") {
    settimer, RButtonWatcher, off
  }
  gosub MouseCursorDirection
  gosub Boat
return
