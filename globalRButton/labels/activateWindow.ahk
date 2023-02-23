ActivateWindow(show, action)
{
  global SelectedWindow_Title
  global SelectedWindow_Id
  if (show == 0)
  {
    WinActivate, ahk_id %SelectedWindow_Id%
    return 1
  } else
  {
    _Msg := action
    _Msg .= "激活窗口: "
    _Msg .= SelectedWindow_Title
    PushMsg(_Msg)
  }
  return 0
}
