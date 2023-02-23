AltTab(show, action)
{
  if (show == 0)
  {
    send, {Alt Down}{Tab}
    send, {Alt Up}
    return 1
  } else
  {
    _Msg := action
    _Msg .= "<Alt-Tab>"
    PushMsg(_Msg)
  }
  return 0
}
