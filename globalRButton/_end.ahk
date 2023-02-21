RemoveTooltip:
  tooltip
return

ClickRightWatcher:
  if (RButtonPressFlag == 1)
  {
    settimer, ClickRightWatcher, off
    RButtonPressFlag := 0
    click Right
  }
return

GlobalRButtonEnd:
  if (((MarkFlagRButton & (1 << 8)) >> 8) == 0)
  {
    settimer, ClickRightWatcher, 10
  }
  gosub HideCircle
  settimer, RemoveTooltip, -2200
return
