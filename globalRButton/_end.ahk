RemoveTooltip:
  tooltip
return

ClickRightWatcher:
  if (RButtonTimerCnt > RButtonTimerOut) {
    settimer, ClickRightWatcher, Off
    click Right
  }
return

GlobalRButtonEnd:
  if (MarkFlagRButtonUpCancel == 0) {
    settimer, ClickRightWatcher, 10
  }
  gosub HideCircle
  settimer, RemoveTooltip, -2200
return
