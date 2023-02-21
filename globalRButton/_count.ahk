RButtonTimerDo:
  getkeystate, RButtonSta, RButton, P
  if (RButtonSta == "U")
  {
    RButtonPressCnt := 0
    settimer, RButtonTimerDo, off
  }
return

RButtonTimer:
  settimer, RButtonTimerDo, 230
return

CntGlobalRButton:
  settimer, RButtonTimer, off
  RButtonPressCnt += 1
  settimer, RButtonTimer, -230
return
