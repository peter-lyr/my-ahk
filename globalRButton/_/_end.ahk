RemoveTooltip:
  tooltip
return

NotDefinedEventWait:
  if (NotDefinedEvent)
  {
    tooltip
  }
return

GlobalRButtonEnd:
  if (((MarkFlagRButton & (1 << 8)) >> 8) == 0 and Direction == "Center" and Mode == 1)
  {
    click Right
    tooltip
  }
  gosub HideCircle
  settimer, RemoveTooltip, -2200
  if (((MarkFlagRButton & (1 << 8)) >> 8))
  {
    settimer, RemoveTooltip, -20
  }
  settimer, NotDefinedEventWait, -90
return
