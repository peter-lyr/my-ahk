InitCircle:
  iniread, CircleSize, main.ini, Circle, size, 90
  iniread, CircleColor, main.ini, Circle, color, red
  iniwrite %CircleSize%, main.ini, Circle, size
  iniwrite %CircleColor%, main.ini, Circle, color
  coordmode, mouse, screen
  gui, -caption +ToolWindow +AlwaysOnTop +LastFound
  gui, color, %CircleColor%
  GuiHwnd := WinExist()
  detecthiddenWindows, on
  winset, Transparent, 50, ahk_id %GuiHwnd%
  winset, Region, % "0-0 W" CircleSize " H" CircleSize " E", ahk_id %GuiHwnd%
  winset, ExStyle, +0x20, ahk_id %GuiHwnd%
  gui, show, w8000 h8000 hide
return

DrawCircle1S:
  _posX := Round(_CurrentMouse_X - CircleSize/2), _posY := Round(_CurrentMouse_Y - CircleSize/2)
  gui, show, x%_posX% y%_posY% NA
return

DrawCircle:
  mousegetPos, _CurrentMouse_X, _CurrentMouse_Y
  _posX := Round(_CurrentMouse_X - CircleSize/2), _posY := Round(_CurrentMouse_Y - CircleSize/2)
  gui, show, x%_posX% y%_posY% NA
  settimer, DrawCircle1S, 1000
return

HideCircle:
  gui, hide
  settimer, DrawCircle1S, off
return
