RemoveTooltip:
  tooltip
return

GlobalRButtonEnd:
  if (((MarkFlagRButton & (1 << 8)) >> 8) == 0)
  {
    click Right
  }
  gosub HideCircle
  settimer, RemoveTooltip, -2200
return
