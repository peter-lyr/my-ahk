RemoveTooltip:
  tooltip
return

ClickRightWatcher:
  if (RButtonTimerCnt > RButtonTimerOut)
  {
    settimer, ClickRightWatcher, Off
    click Right
  }
return

GlobalRButtonEnd:
  if (((MarkFlagRButton & (1 << 8)) >> 8) == 0)
  {
    settimer, ClickRightWatcher, 10
  }
  gosub CntGlobalRButtonEnd
  gosub HideCircle
  settimer, RemoveTooltip, -2200
return
