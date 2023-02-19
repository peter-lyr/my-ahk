Boat:
  ; tooltip Direction: %Direction%`nRButtonPressCnt: %RButtonPressCnt%`nRButtonTimerCnt: %RButtonTimerCnt%`nMarkFlagRButtonAll: %MarkFlagRButtonAll%`nMarkFlagRButtonLButton: %MarkFlagRButtonLButton%`nMarkFlagRButtonLButtonDown: %MarkFlagRButtonLButtonDown%`nMarkFlagRButtonLButtonUp: %MarkFlagRButtonLButtonUp%`nMarkFlagRButtonMButton: %MarkFlagRButtonMButton%`nMarkFlagRButtonMButtonDown: %MarkFlagRButtonMButtonDown%`nMarkFlagRButtonMButtonUp: %MarkFlagRButtonMButtonUp%`nMarkFlagRButtonUp: %MarkFlagRButtonUp%`nMarkFlagRButtonUpCancel: %MarkFlagRButtonUpCancel%`nMarkFlagRButtonWheel: %MarkFlagRButtonWheel%`nMarkFlagRButtonWheelDown: %MarkFlagRButtonWheelDown%`nMarkFlagRButtonWheelUp: %MarkFlagRButtonWheelUp%`n
  switch RButtonPressCnt {
  case 1:
    switch Direction {
    case "Center":
      gosub Center1
    case "RightUp":
      ; gosub RightUp1
    case "RightDown":
      ; gosub RightDown1
    case "LeftDown":
      ; gosub LeftDown1
    case "LeftUp":
      ; gosub LeftUp1
    case "Up":
      ; gosub Up1
    case "Right":
      ; gosub Right1
    case "Down":
      ; gosub Down1
    case "Left":
      ; gosub Left1
    }
  case 2:
    tooltip 2
  case 3:
    tooltip 3
  case 4:
    tooltip 4
  case 5:
    tooltip 5
  }
return

RButtonWatcher:
  getkeystate, RButtonSta, RButton, P
  if (RButtonSta == "U")
  {
    settimer, RButtonWatcher, off
  }
  gosub MouseCursorDirection
  gosub Boat
return
