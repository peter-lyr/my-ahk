Esc(show, action)
{
  if (show == 0)
  {
    send, {Esc}
    return 1
  } else
  {
    _Msg := action
    _Msg .= "<Esc>"
    PushMsg(_Msg)
  }
  return 0
}
