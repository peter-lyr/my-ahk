CountUpNotAllow:
  CountUpAllowed := 0
return

CountUpPre(show, action)
{
  global RButtonPressCnt
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
  global RButtonPressCnt
  global CountUpAllowed
  if (CountUpAllowed)
  {
    if (show == 0)
    {
      RButtonPressCnt += 1
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
  global RButtonPressCnt
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
  global RButtonPressCnt
  global CountDownAllowed
  if (CountDownAllowed)
  {
    if (show == 0)
    {
      RButtonPressCnt -= 1
    } else
    {
      _Msg := action
      _Msg .= "Count--"
      PushMsg(_Msg)
    }
  }
}
