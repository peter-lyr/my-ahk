RemoveTooltip:
  tooltip
return

GlobalRButtonEnd:
  if (((MarkFlagRButton & (1 << 8)) >> 8) == 0 and Direction == "Center" and Mode == 1)
  {
    click Right
  }
  gosub HideCircle
  settimer, RemoveTooltip, -2200
return
