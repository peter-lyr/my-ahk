AltTab(show, action)
{
  if (show == 0)
  {
    Send, {Alt Down}{Tab}
    Send, {Alt Up}
    return 1
  } else {
    _Msg := action
    _Msg .= "<Alt-Tab>"
    PushMsg(_Msg)
  }
  return 0
}
