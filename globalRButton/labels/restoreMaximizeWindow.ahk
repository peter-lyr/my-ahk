RestoreMaximizeWindow(show, action)
{
  global SelectedWindow_Id
  global SelectedWindow_Title
  if (show == 0)
  {
    if (IsDesktop(SelectedWindow_Title) == 0)
    {
      winget, _status, MinMax, ahk_id %SelectedWindow_Id%
      if (_status == 0)
      {
        winmaximize, ahk_id %SelectedWindow_Id%
      } else
      {
        winrestore, ahk_id %SelectedWindow_Id%
      }
      return 1
    }
  } else
  {
     if (IsDesktop(SelectedWindow_Title) == 0)
     {
      winget, _status, MinMax, ahk_id %SelectedWindow_Id%
      if (_status == 0)
      {
        _Msg := "最大化窗口："
        _Msg .= Trim(SelectedWindow_Title)
      } else
      {
        _Msg := "恢复窗口："
        _Msg .= Trim(SelectedWindow_Title)
      }
      PushMsg(_Msg)
    }
  }
  return 0
}
