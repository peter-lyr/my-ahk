Short(text, len=10)
{
  text := trim(text, " `t`r`n")
  text := strreplace(text, A_Space)
  text := strreplace(text, "`r`n")
  text := strreplace(text, "`t")
  new := text
  if (strlen(text) > 2 * len)
  {
    new := substr(text, 1, len)
    new .= "..."
    new .= substr(text, -len)
  }
  return new
}

CopyWatcher:
  _Clipboard=%clipboard%
  if (_Clipboard != "") {
    settimer, CopyWatcher, Off
    if (SelectedWindow_IsExplorer() == 1) {
      TextCopied := _Clipboard
    } else
    {
      TextCopied := Short(_Clipboard)
    }
  }
return

Copy:
  send {Ctrl Down}c
  send {Ctrl Up}
  settimer, CopyWatcher, 10
return

CopyPre(show, action)
{
  global TextCopied
  if (show == 0)
  {
  } else
  {
    _Msg := action
    _Msg .= "尝试复制"
    PushMsg(_Msg)
  }
}

CopyDo(show, action)
{
  if (show == 0)
  {
    gosub Copy
  } else
  {
    _Msg := action
    _Msg .= "复制"
    PushMsg(_Msg)
  }
}
