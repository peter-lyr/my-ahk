CtrlWinRight(show, action)
{
  if (show == 0)
  {
    Send, {Ctrl Down}{LWin Down}{Right}
    Send, {Ctrl Up}
    Send, {LWin Up}
  } else {
    _Msg := action
    _Msg .= "切换下一个虚拟桌面"
    PushMsg(_Msg)
  }
}

CtrlWinLeft(show, action)
{
  if (show == 0)
  {
    Send, {Ctrl Down}{LWin Down}{Left}
    Send, {Ctrl Up}
    Send, {LWin Up}
  } else {
    _Msg := action
    _Msg .= "切换上一个虚拟桌面"
    PushMsg(_Msg)
  }
}
