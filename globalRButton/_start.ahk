SelectedWindow(SelectedWindow_Id) {
  global SelectedWindow_Title
  global SelectedWindow_ProcessName
  wingettitle, SelectedWindow_Title, ahk_id %SelectedWindow_Id%
  winget, selectedWindow_ProcessName, ProcessName, ahk_id %SelectedWindow_Id%
  SelectedWindow_Title := Trim(SelectedWindow_Title)
  SelectedWindow_ProcessName := Trim(SelectedWindow_ProcessName)
}

GlobalRButtonStart:
  gosub DrawCircle
  gosub CntGlobalRButton
  mousegetpos, SelectedWindow_X, SelectedWindow_Y, SelectedWindow_Id
  SelectedWindow(SelectedWindow_Id)
  SetTimer, RButtonWatcher, 10
return
