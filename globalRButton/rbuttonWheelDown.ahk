DoRButtonWheelDown(show, action="向下滚轮: ")
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
  ret := NotDefinedEventDo(show, ret)
  return ret
}
