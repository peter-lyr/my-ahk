CtrlWinRight(show, action)
{
  if (show == 0)
  {
    send, {Ctrl Down}{LWin Down}{Right}
    send, {Ctrl Up}
    send, {LWin Up}
  } else
  {
    _Msg := action
    _Msg .= "切换下一个虚拟桌面"
    PushMsg(_Msg)
  }
  return 0
}

CtrlWinLeft(show, action)
{
  if (show == 0)
  {
    send, {Ctrl Down}{LWin Down}{Left}
    send, {Ctrl Up}
    send, {LWin Up}
  } else
  {
    _Msg := action
    _Msg .= "切换上一个虚拟桌面"
    PushMsg(_Msg)
  }
  return 0
}
