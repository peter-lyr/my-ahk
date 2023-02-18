RButtonWatcher:
  GetKeyState, RButtonSta, RButton, P
  if (RButtonSta == "U") {
    SetTimer, RButtonWatcher, Off
  }
  GoSub, MouseCursorDirection
  tooltip %Direction%+%RButtonPressCnt%-%RButtonTimerCnt%
Return
