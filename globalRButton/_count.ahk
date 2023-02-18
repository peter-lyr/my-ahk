RButtonTimer:
  RButtonTimerCnt += 1
  tooltip %RButtonPressCnt%-%RButtonTimerCnt%
  if (RButtonTimerCnt > RButtonTimerOut) {
    settimer, RButtonTimer, off
    return
  }
return

CntGlobalRButton:
  if (RButtonTimerCnt < RButtonTimerOut) {
    RButtonPressCnt += 1
    if (RButtonPressCnt > RButtonPressCntMax) {
      RButtonPressCnt := RButtonPressCntMax
    }
  } else {
    RButtonPressCnt := 1
  }
  RButtonTimerCnt := 0
  settimer, RButtonTimer, 10
return

CntGlobalRButtonEnd:
  settimer, RButtonTimer, off
  if (RButtonTimerCnt < RButtonTimerOut) {
    RButtonTimerCnt := 0
    settimer, RButtonTimer, 10
  }
return
