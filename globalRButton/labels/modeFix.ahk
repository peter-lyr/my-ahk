ModeFixToggle(show, action)
{
  global Mode
  global ModeFixed
  if (show == 0)
  {
    if (ModeFixed == 1)
    {
      ModeFixed := 0
    } else
    {
      ModeFixed := 1
    }
    _Msg := "ModeFixed: "
    _Msg .= ModeFixed
    PushMsg(_Msg)
  } else
  {
    _Msg := action
    if (ModeFixed == 1)
    {
      _Msg .= "Don't Fix Mode"
    } else
    {
      _Msg .= "Fix Mode"
    }
    PushMsg(_Msg)
  }
  return 0
}
