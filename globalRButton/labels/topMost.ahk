TopMostToggle(show, action)
{
  global SelectedWindow_Title
  global SelectedWindow_Id
  if (show == 0)
  {
    if (IsDesktop(SelectedWindow_Title) == 0)
    {
      WinGet, Status, ExStyle, ahk_id %SelectedWindow_Id%
      if (Status & 0x8)
      {
        Winset, AlwaysOnTop, Off, ahk_id %SelectedWindow_Id%
        _Msg := "已取消置顶"
        _Msg .= SelectedWindow_Title
      } else {
        Winset, AlwaysOnTop, On, ahk_id %SelectedWindow_Id%
        _Msg := "已置顶"
        _Msg .= SelectedWindow_Title
      }
      PushMsg(_Msg)
    }
  } else {
    if (IsDesktop(SelectedWindow_Title) == 0)
    {
      WinGet, Status, ExStyle, ahk_id %SelectedWindow_Id%
      _Msg := action
      if (Status & 0x8)
      {
        _Msg .= "取消置顶: "
        _Msg .= SelectedWindow_Title
      } else {
        _Msg .= "置顶: "
        _Msg .= SelectedWindow_Title
      }
    } else {
      _Msg := "无法置顶桌面"
    }
    PushMsg(_Msg)
  }
  return 0
}
