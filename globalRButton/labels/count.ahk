CountUpNotAllow:
  CountUpAllowed := 0
return

CountUpPre(show, action)
{
  global Mode
  global CountUpAllowed
  if (show == 0)
  {
    CountUpAllowed := 1
  } else
  {
    _Msg := action
    _Msg .= "Try Count++"
    PushMsg(_Msg)
  }
}

CountUpDo(show, action)
{
  global Mode
  global ModeMax
  global CountUpAllowed
  if (CountUpAllowed)
  {
    if (show == 0)
    {
      if (Mode < ModeMax)
      {
        Mode += 1
      } else
      {
        Mode := 1
      }
    } else
    {
      _Msg := action
      _Msg .= "Count++"
      PushMsg(_Msg)
    }
  }
}

CountDownNotAllow:
  CountDownAllowed := 0
return

CountDownPre(show, action)
{
  global Mode
  global CountDownAllowed
  if (show == 0)
  {
    CountDownAllowed := 1
  } else
  {
    _Msg := action
    _Msg .= "Try Count--"
    PushMsg(_Msg)
  }
}

CountDownDo(show, action)
{
  global Mode
  global ModeMax
  global CountDownAllowed
  if (CountDownAllowed)
  {
    if (show == 0)
    {
      if (Mode > 1)
      {
        Mode -= 1
      } else
      {
        Mode := ModeMax
      }
    } else
    {
      _Msg := action
      _Msg .= "Count--"
      PushMsg(_Msg)
    }
  }
}
