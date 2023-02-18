RButtonWatcher:
  GetKeyState, RButtonSta, RButton, P
  if (RButtonSta == "U") {
    settimer, RButtonWatcher, off
  }
  gosub, MouseCursorDirection
  tooltip %Direction%+%RButtonPressCnt%-%RButtonTimerCnt%
return
