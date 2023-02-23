CtrlAltTab(show, action)
{
  if (show == 0)
  {
    send, {Alt Down}{Ctrl Down}{Tab}
    send, {Alt Up}
    send, {Ctrl Up}
    return 1
  } else
  {
    _Msg := action
    _Msg .= "<Alt+Ctrl+TAb>"
    PushMsg(_Msg)
  }
  return 0
}
