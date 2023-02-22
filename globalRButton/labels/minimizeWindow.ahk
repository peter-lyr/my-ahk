MinimizeWindow(show, action)
{
  global SelectedWindow_Id
  global SelectedWindow_Title
  if (show == 0)
  {
    if (IsDesktop(SelectedWindow_Title) == 0)
    {
      winminimize, ahk_id %SelectedWindow_Id%
      return 1
    }
  } else
  {
    _Msg := action
    if (IsDesktop(SelectedWindow_Title) == 0)
    {
      _Msg .= "最小化："
      _Msg .= SelectedWindow_Title
    } else
    {
      _Msg .= "不允许最小化桌面"
    }
    PushMsg(_Msg)
  }
  return 0
}
