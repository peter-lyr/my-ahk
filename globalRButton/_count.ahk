RButtonTimerDo:
  getkeystate, RButtonSta, RButton, P
  if (RButtonSta == "U")
  {
    RButtonPressCnt := 0
    settimer, RButtonTimerDo, off
  }
return

RButtonTimer:
  settimer, RButtonTimerDo, 10
  RButtonPressFlag := 1
return

CntGlobalRButton:
  settimer, RButtonTimer, off
  RButtonPressCnt += 1
  settimer, RButtonTimer, -230
return
