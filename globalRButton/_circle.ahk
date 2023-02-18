InitCircle:
  iniread, _CircleSize, main.ini, Circle, size, 90
  iniread, _CircleColor, main.ini, Circle, color, red
  iniwrite %_CircleSize%, main.ini, Circle, size
  iniwrite %_CircleColor%, main.ini, Circle, color
  coordmode, mouse, screen
  gui, -caption +ToolWindow +AlwaysOnTop +LastFound
  gui, color, %_CircleColor%
  GuiHwnd := WinExist()
  detecthiddenWindows, on
  winset, Transparent, 50, ahk_id %GuiHwnd%
  winset, Region, % "0-0 W" _CircleSize " H" _CircleSize " E", ahk_id %GuiHwnd%
  winset, ExStyle, +0x20, ahk_id %GuiHwnd%
  gui, show, w200 h200 hide
return

DrawCircle1S:
  _posX := Round(_CurrentMouse_X - _CircleSize/2), _posY := Round(_CurrentMouse_Y - _CircleSize/2)
  gui, show, x%_posX% y%_posY% NA
return

DrawCircle:
  mousegetPos, _CurrentMouse_X, _CurrentMouse_Y
  _posX := Round(_CurrentMouse_X - _CircleSize/2), _posY := Round(_CurrentMouse_Y - _CircleSize/2)
  gui, show, x%_posX% y%_posY% NA
  settimer, DrawCircle1S, 1000
return

HideCircle:
  gui, hide
  settimer, DrawCircle1S, off
return
