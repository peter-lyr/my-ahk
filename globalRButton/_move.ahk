MoveWindowWatch:
  coordmode, Mouse, Screen
  getkeystate, _LButtonStatus, LButton, P
  if (_LButtonStatus == "U")
  {
    settimer, MoveWindowWatch, Off
    FlagMoveWindow := 0
    return
  }
  if (((MarkFlagRButton & (1 << 7)) >> 7) == 1)
  {
    settimer, MoveWindowWatch, Off
    winmove, ahk_id %MoveWindow_Id%, , %MoveWindow_OriX%, %MoveWindow_OriY%
    FlagMoveWindow := 0
    tooltip
    return
  }
  mousegetpos, _X2, _Y2
  wingetpos, _X, _Y, , , ahk_id %MoveWindow_Id%
  setwindelay, -1
  winmove, ahk_id %MoveWindow_Id%, , _X + _X2 - _X1, _Y + _Y2 - _Y1
  _X1 := _X2
  _Y1 := _Y2
return

MoveWindow:
  getkeystate, MButtonSta, MButton, P
  coordmode, Mouse, Screen
  mousegetpos, _X1, _Y1, MoveWindow_Id
  winget, _MaxMaxStatus, MinMax, ahk_id %MoveWindow_Id%
  if (_MaxMaxStatus or SelectedWindow_IsDesktop() or MButtonSta == "D")
  {
    FlagMoveWindow := 0
    return
  }
  FlagMoveWindow := 1
  wingetpos, MoveWindow_OriX, MoveWindow_OriY, , , ahk_id %MoveWindow_Id%
  winget, _MinMaxStatus, MinMax, ahk_id %MoveWindow_Id%
  if (_MinMaxStatus = 0)
  {
    settimer, MoveWindowWatch, 10
  }
return
