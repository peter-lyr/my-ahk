WinCommaDown(show, action)
{
  if (show == 0)
  {
    send, {LWin Down},
  } else
  {
    _Msg := action
    _Msg .= "<Win-,>"
    PushMsg(_Msg)
  }
  return 0
}

WinUp(show, action)
{
  if (show == 0)
  {
    send, {LWin Up}
  } else
  {
    _Msg := action
    _Msg .= "<WinUp>"
    PushMsg(_Msg)
  }
  return 0
}
