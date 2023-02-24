DoRButtonMButtonDown(show, action="按下中键: ")
{
  global Mode
  global Direction
  global msg
  ret := -1
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
  ret := NotDefinedEventDo(show, ret)
  return ret
}
