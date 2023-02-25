ModeFixDetect(show, action)
{
  global Mode
  global ModeFixed
  if (IsRButtonPosX0Y0())
  {
    if (show == 0)
    {
      if (Mode > 1)
      {
        ModeFixed := 0
      } else
      {
        ModeFixed := 1
      }
    } else
    {
      _Msg := action
      if (Mode > 1)
      {
        _Msg .= "Mode 1"
      } else
      {
        _Msg .= "Fix Mode"
      }
      PushMsg(_Msg)
    }
  }
}
