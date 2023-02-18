RemoveTooltip:
  tooltip
return

GlobalRButtonEnd:
  gosub HideCircle
  settimer, RemoveTooltip, -2200
return
