CopyTextWatcher:
  _Clipboard=%clipboard%
  if (_Clipboard != "") {
    settimer, CopyTextWatcher, Off
    clipboard=%clipboard%
    TextCopied := ""
    if (SelectedWindow_IsExplorer() == 1) {
      TextCopied .= _Clipboard
    } else
    {
      if (strlen(_Clipboard) > 10)
      {
        TextCopied .= substr(_Clipboard, 1, 5)
        TextCopied .= "..."
        TextCopied .= substr(rtrim(_Clipboard, " `t`r`n"), -5)
      } else
      {
        TextCopied .= _Clipboard
      }
    }
  }
return

CopyText:
  send {Ctrl Down}c
  send {Ctrl Up}
  settimer, CopyTextWatcher, 10
return

CopyTextPre(show, action)
{
  global TextCopied
  if (show == 0)
  {
  } else
  {
    _Msg := action
    _Msg .= "尝试复制"
    if (TextCopied != 0)
    {
      _Msg .= "("
      _Msg .= TextCopied
      _Msg .= ")"
    }
    PushMsg(_Msg)
  }
}

CopyTextDo(show, action)
{
  if (show == 0)
  {
    gosub CopyText
  } else
  {
    _Msg := action
    _Msg .= "复制"
    PushMsg(_Msg)
  }
}
