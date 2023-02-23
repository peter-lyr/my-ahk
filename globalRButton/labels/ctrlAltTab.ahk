CtrlAltTab(show, action)
{
  if (show == 0)
  {
    Send, {Alt Down}{Ctrl Down}{Tab}
    Send, {Alt Up}
    Send, {Ctrl Up}
    return 1
  } else
  {
    _Msg := action
    _Msg .= "<Alt+Ctrl+TAb>"
    PushMsg(_Msg)
  }
  return 0
}
