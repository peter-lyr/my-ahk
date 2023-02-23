VolumeUp(show, action)
{
  if (show == 0)
  {
    Send, {Volume_Up}
  } else
  {
    _Msg := action
    _Msg .= "提高音量"
    PushMsg(_Msg)
  }
  return 0
}

VolumeDown(show, action)
{
  if (show == 0)
  {
    Send, {Volume_Down}
  } else
  {
    _Msg := action
    _Msg .= "降低音量"
    PushMsg(_Msg)
  }
  return 0
}
