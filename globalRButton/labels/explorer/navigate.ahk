ExplorerNavigateUp(show, action)
{
  global SelectedWindow_Title
  global SelectedWindow_ProcessName
  if (show == 0)
  {
    if (IsExplorer(SelectedWindow_Title, SelectedWindow_ProcessName))
    {
      global SelectedWindow_Id
      winactivate, ahk_id %SelectedWindow_Id%
      send, {Alt Down}{Up}
      send, {Alt Up}
      return 1
    }
    return -1
  } else
  {
    if (IsExplorer(SelectedWindow_Title, SelectedWindow_ProcessName))
    {
      _Msg := action
      _Msg .= "向上一级"
      PushMsg(_Msg)
    }
  }
}

ExplorerNavigateForward(show, action)
{
  global SelectedWindow_Title
  global SelectedWindow_ProcessName
  if (show == 0)
  {
    if (IsExplorer(SelectedWindow_Title, SelectedWindow_ProcessName))
    {
      global SelectedWindow_Id
      winactivate, ahk_id %SelectedWindow_Id%
      send, {Alt Down}{Right}
      send, {Alt Up}
      return 1
    }
    return -1
  } else
  {
    if (IsExplorer(SelectedWindow_Title, SelectedWindow_ProcessName))
    {
      _Msg := action
      _Msg .= "Explorer前进"
      PushMsg(_Msg)
    }
  }
}

ExplorerNavigateBackward(show, action)
{
  global SelectedWindow_Title
  global SelectedWindow_ProcessName
  if (show == 0)
  {
    if (IsExplorer(SelectedWindow_Title, SelectedWindow_ProcessName))
    {
      global SelectedWindow_Id
      winactivate, ahk_id %SelectedWindow_Id%
      send, {Alt Down}{Left}
      send, {Alt Up}
      return 1
    }
    return -1
  } else
  {
    if (IsExplorer(SelectedWindow_Title, SelectedWindow_ProcessName))
    {
      _Msg := action
      _Msg .= "Explorer后退"
      PushMsg(_Msg)
    }
  }
}
