DoRButtonMButtonUp(show, action="抬起中键: ")
{
  global Mode
  global Direction
  global msg
  ret := -1
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
  ret := NotDefinedEventDo(show, ret)
  return ret
}
