MoveWindowCenterRestoreNotAllow:
  MoveWindowCenterRestoreAllowed := 0
return

CoorModeMouseScreen:
  if (!RegexMatch(A_CoordModeMouse, "i)screen"))
  {
    coordmode, Mouse, Screen
  }
return

MoveWindowWatch:
  setwindelay, 0
  getkeystate, _LButtonStatus, LButton, P
  if (((((MarkFlagRButton & (1 << 7)) >> 7) == 1) and (Direction != "Center")) or (MoveWindowCenterRestoreAllowed and (_LButtonStatus == "U") and (Direction == "Center")))
  {
    settimer, MoveWindowWatch, Off
    gosub CoorModeMouseScreen
    winmove, ahk_id %MoveWindow_Id%, , %MoveWindow_OriX%, %MoveWindow_OriY%
    MoveWindowAllowed := 0
    tooltip
    return
  }
  if ((MarkFlagRButton & (1 << 7)) >> 7 == 1 or _LButtonStatus == "U")
  {
    settimer, MoveWindowWatch, Off
    MoveWindowAllowed := 0
    return
  }
  mousegetpos, _X2, _Y2
  wingetpos, _X, _Y, , , ahk_id %MoveWindow_Id%
  gosub CoorModeMouseScreen
  winmove, ahk_id %MoveWindow_Id%, , _X + _X2 - _X1, _Y + _Y2 - _Y1
  _X1 := _X2
  _Y1 := _Y2
return

MoveWindow:
  getkeystate, MButtonSta, MButton, P
  mousegetpos, _X1, _Y1, MoveWindow_Id
  winget, _MaxMaxStatus, MinMax, ahk_id %MoveWindow_Id%
  wingettitle, MoveWindow_Title, ahk_id %MoveWindow_Id%
  if (_MaxMaxStatus or IsDesktop(MoveWindow_Title) or MButtonSta == "D")
  {
    MoveWindowAllowed := 0
    return
  }
  MoveWindowCenterRestoreAllowed := 1
  if (Direction != "Center")
  {
    gosub MoveWindowCenterRestoreNotAllow
  }
  MoveWindowAllowed := 1
  wingetpos, MoveWindow_OriX, MoveWindow_OriY, , , ahk_id %MoveWindow_Id%
  winget, _MinMaxStatus, MinMax, ahk_id %MoveWindow_Id%
  if (_MinMaxStatus = 0)
  {
    settimer, MoveWindowWatch, 10
  }
return
