Paste:
  send {Ctrl Down}v
  send {Ctrl Up}
return

PastePre(show, action)
{
  global TextCopied
  if (show == 0)
  {
  } else
  {
    _Msg := action
    _Msg .= "尝试粘贴"
    if (strlen(TextCopied) > 0)
    {
      _Msg .= "("
      _Msg .= TextCopied
      _Msg .= ")"
    }
    PushMsg(_Msg)
  }
  return 0
}

PasteDo(show, action)
{
  global TextCopied
  if (show == 0)
  {
    gosub Paste
  } else
  {
    _Msg := action
    _Msg .= "粘贴"
    if (strlen(TextCopied) > 0)
    {
      _Msg .= "("
      _Msg .= TextCopied
      _Msg .= ")"
    }
    PushMsg(_Msg)
  }
  return 0
}
