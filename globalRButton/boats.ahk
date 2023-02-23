DoRButtonUp(show, action="松开右键: ")
{
  global Mode
  global Direction
  global msg
  ret := 0
  switch Direction
  {
    case "Center":
    {
      switch Mode
      {
        case 2:
        {
          ret := ActivateWindow(show, action)
        }
      }
    }
    case "RightUp":
    {
      switch Mode
      {
        case 1:
        {
          ret := RestoreMaximizeWindow(show, action)
        }
      }
    }
    case "RightDown":
    {
      switch Mode
      {
        case 1:
        {
          ret := MinimizeWindow(show, action)
        }
      }
    }
    case "LeftDown":
    {
      switch Mode
      {
        case 1:
        {
          ret := ExplorerNavigateUp(show, action)
        }
      }
    }
    case "LeftUp":
    case "Up":
    {
      switch Mode
      {
        case 1:
        {
          ret := TopMostToggle(show, action)
        }
      }
    }
    case "Right":
    {
      switch Mode
      {
        case 1:
        {
          ret := AltTab(show, action)
        }
      }
    }
    case "Down":
      switch Mode
      {
        case 1:
        {
          ret := TransparencyToggle(show, action)
        }
      }
    case "Left":
    {
      switch Mode
      {
        case 1:
        {
          ret := CtrlAltTab(show, action)
        }
      }
    }
  }
  return ret
}

DoRButtonLButtonDown(show, action="按下左键: ")
{
  global Mode
  global Direction
  global msg
  ret := 0
  switch Direction
  {
    case "Center":
    {
      ret := CountUpPre(show, action)
    }
    case "Up":
    {
      switch Mode
      {
        case 2:
        {
          ret := CopyPre(show, action)
        }
      }
    }
  }
  return ret
}

DoRButtonLButtonUp(show, action="抬起左键: ")
{
  global Mode
  global Direction
  global msg
  ret := 0
  switch Direction
  {
    case "Center":
    {
      ret := CountUpDo(show, action)
    }
    case "Up":
    {
      switch Mode
      {
        case 2:
        {
          ret := CopyDo(show, action)
        }
      }
    }
  }
  if (show == 0 or Direction != "Center")
  {
    gosub CountUpNotAllow
    if (Direction != "Center")
    {
      gosub MoveWindowCenterRestoreNotAllow
    }
  }
  return ret
}

DoRButtonMButtonDown(show, action="按下中键: ")
{
  global Mode
  global Direction
  global msg
  ret := 0
  switch Direction
  {
    case "Center":
    {
      ret := CountDownPre(show, action)
    }
    case "Up":
    {
      switch Mode
      {
        case 2:
        {
          ret := PastePre(show, action)
        }
      }
    }
  }
  return ret
}

DoRButtonMButtonUp(show, action="抬起中键: ")
{
  global Mode
  global Direction
  global msg
  ret := 0
  switch Direction
  {
    case "Center":
    {
      ret := CountDownDo(show, action)
    }
    case "Up":
    {
      switch Mode
      {
        case 2:
        {
          ret := PasteDo(show, action)
        }
      }
    }
  }
  if (show == 0 or Direction != "Center")
  {
    gosub CountDownNotAllow
    if (Direction != "Center")
    {
      gosub ResizeWindowCenterRestoreNotAllow
    }
  }
  return ret
}

DoRButtonWheelDown(show, action="向下滚轮: ")
{
  global Mode
  global Direction
  global msg
  ret := 0
  switch Direction
  {
    case "RightDown":
    {
      switch Mode
      {
        case 1:
        {
          ret := CtrlWinRight(show, action)
        }
      }
    }
    case "Center":
    {
      switch Mode
      {
        case 1:
        {
          ret := ShiftWheelDown(show, action)
        }
      }
    }
    case "Up":
    {
      switch Mode
      {
        case 1:
        {
          ret := VolumeDown(show, action)
        }
      }
    }
    case "Down":
      switch Mode
      {
        case 1:
        {
          ret := TransparencyDown(show, action)
        }
      }
    case "RightUp":
    {
      switch Mode
      {
        case 1:
        {
          ret := ExplorerNavigateBackward(show, action)
        }
      }
    }
  }
  return ret
}

DoRButtonWheelUp(show, action="向上滚轮: ")
{
  global Mode
  global Direction
  global msg
  ret := 0
  switch Direction
  {
    case "RightDown":
    {
      switch Mode
      {
        case 1:
        {
          ret := CtrlWinLeft(show, action)
        }
      }
    }
    case "Center":
    {
      switch Mode
      {
        case 1:
        {
          ret := ShiftWheelUp(show, action)
        }
      }
    }
    case "Up":
    {
      switch Mode
      {
        case 1:
        {
          ret := VolumeUp(show, action)
        }
      }
    }
    case "Down":
      switch Mode
      {
        case 1:
        {
          ret := TransparencyUp(show, action)
        }
      }
    case "RightUp":
    {
      switch Mode
      {
        case 1:
        {
          ret := ExplorerNavigateForward(show, action)
        }
      }
    }
  }
  return ret
}
