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
        case 3:
        {
          ret := WinCommaDown(show, action)
        }
      }
    }
  }
  return ret
}
