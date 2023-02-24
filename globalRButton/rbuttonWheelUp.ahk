DoRButtonWheelUp(show, action="向上滚轮: ")
{
  global Mode
  global Direction
  global msg
  ret := -1
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
  ret := NotDefinedEventDo(show, ret)
  return ret
}
