ResizeWindow:
  getkeystate, MButtonSta, MButton, P
  coordmode, Mouse, Screen
  mousegetpos, _MouseWindow_X1, _MouseWindow_Y1, _MouseWindowId
  winget, _MaxMaxStatus, MinMax, ahk_id %_MouseWindowId%
  if (_MaxMaxStatus or SelectedWindow_IsDesktop() or LButtonSta == "D")
  {
    FlagResizeWindow := 0
    return
  }
  FlagResizeWindow := 1
  setwindelay, 2
  wingetpos, _X1, _Y1, _W, _H, ahk_id %_MouseWindowId%
  wingetpos, _XX1, _YY1, _WW, _HH, ahk_id %_MouseWindowId%
  _Y := _H * (_MouseWindow_X1 - _X1) / _W + _Y1
  __Y := _H * (_X1 - _MouseWindow_X1) / _W + _Y1 + _H
  if (_MouseWindow_X1 < _X1 + _W / 3 or ((_MouseWindow_Y1 > _Y) and (_MouseWindow_Y1 < __Y)))
  {
    _WinLeft := 1
    _WinWidth := 1
    __Dx := 1
  } else if (_MouseWindow_X1 > _X1 + _W * 2 / 3 or ((_MouseWindow_Y1 < _Y) and (_MouseWindow_Y1 > __Y)))
  {
    _WinLeft := -1
    _WinWidth := 1
    __Dx := 0
  } else {
    _WinLeft := 0
    _WinWidth := 0
    __Dx := 0
  }
  if (_MouseWindow_Y1 < _Y1 + _H / 3 or ((_MouseWindow_Y1 < _Y) and (_MouseWindow_Y1 < __Y)))
  {
    _WinUp := 1
    _WinHeight := 1
    __Dy := 1
  } else if (_MouseWindow_Y1 > _Y1 + _H * 2 / 3 or ((_MouseWindow_Y1 > _Y) and (_MouseWindow_Y1 > __Y)))
  {
    _WinUp := -1
    _WinHeight := 1
    __Dy := 0
  } else {
    _WinUp := 0
    _WinHeight := 0
    __Dy := 0
  }
  Loop {
    if (MarkFlagRButtonUp == 1)
    {
      winmove, ahk_id %_MouseWindowId%, , _XX1, _YY1, _WW, _HH
      FlagResizeWindow := 0
      tooltip
      break
    }
    getkeystate, MButtonStatus, MBUTTON, P
    if (MButtonStatus == "U")
    {
      FlagResizeWindow := 0
      tooltip
      break
    }
    mousegetpos, _MouseWin_X2, _MouseWin_Y2
    wingetpos, _X1, _Y1, _W, _H, ahk_id %_MouseWindowId%
    _MouseWin_X2 -= _MouseWindow_X1
    _MouseWin_Y2 -= _MouseWindow_Y1
    _X_ := _X1 + _MouseWin_X2 * __Dx
    _Y_ := _Y1 + _MouseWin_Y2 * __Dy
    _W_ := _W  - _MouseWin_X2 * _WinLeft * _WinWidth
    _H_ := _H  - _MouseWin_Y2 * _WinUp  * _WinHeight
    winmove, ahk_id %_MouseWindowId%, , _X_ , _Y_ , _W_ , _H_
    _MouseWindow_X1 := (_MouseWin_X2 + _MouseWindow_X1)
    _MouseWindow_Y1 := (_MouseWin_Y2 + _MouseWindow_Y1)
  }
return
