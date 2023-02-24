DoRButtonLButtonUp(show, action="抬起左键: ")
{
  global Mode
  global Direction
  global msg
  ret := -1
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
  WinUp(show, action)
  ret := NotDefinedEventDo(show, ret)
  return ret
}
