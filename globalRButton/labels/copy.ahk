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
  global Test_X1
  global Test_Y1
  global TextCopied
  if (show == 0)
  {
    mousegetpos, Test_X1, Test_Y1
  } else
  {
    _Msg := action
    _Msg .= "尝试复制文字"
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
  global Test_X1
  global Test_Y1
  mousegetpos, Test_X2, Test_Y2
  if (Test_X1 == Test_X2 and Test_Y1 == Test_Y2)
  {
    if (show == 0)
    {
      gosub CopyText
    } else
    {
      _Msg := action
      _Msg .= "复制文字"
      PushMsg(_Msg)
    }
  }
}
