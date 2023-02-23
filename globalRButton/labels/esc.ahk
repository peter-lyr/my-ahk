Esc(show, action)
{
  if (show == 0)
  {
    send, {Esc}
  } else
  {
    _Msg := action
    _Msg .= "<Esc>"
    PushMsg(_Msg)
  }
  return 0
}
