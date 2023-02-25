DoRButtonUp(show, action="松开右键: ")
{
  global Mode
  global Direction
  global msg
  ret := -1
  switch Direction
  {
    case "Center":
    {
      ModeFixDetect(show, action)
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
        case 2:
        {
          ret := Esc(show, action)
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
  ret := NotDefinedEventDo(show, ret)
  return ret
}
