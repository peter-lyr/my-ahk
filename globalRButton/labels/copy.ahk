Short(text, len=10)
{
  text := trim(text, " `t`r`n")
  text := strreplace(text, A_Space)
  text := strreplace(text, "`r`n")
  text := strreplace(text, "`t")
  ret := text
  if (strlen(text) > 2 * len)
  {
    ret := substr(text, 1, len)
    ret .= "..."
    ret .= substr(text, -len)
  }
  return ret
}

CopyWatcher:
  _Clipboard=%clipboard%
  if (_Clipboard != "")
  {
    settimer, CopyWatcher, Off
    if (IsDesktopOrExplorer(SelectedWindow_ProcessName) == 1)
    {
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
