InitGlobalRButton:
  MarkFlagRButtonAll := 0
  MarkFlagRButtonLButton := 0
  MarkFlagRButtonLButtonDown := 0
  MarkFlagRButtonLButtonUp := 0
  MarkFlagRButtonMButton := 0
  MarkFlagRButtonMButtonDown := 0
  MarkFlagRButtonMButtonUp := 0
  MarkFlagRButtonUp := 0
  MarkFlagRButtonUpCancel := 0
  MarkFlagRButtonWheel := 0
  MarkFlagRButtonWheelDown := 0
  MarkFlagRButtonWheelUp := 0
return

SelectedWindow(SelectedWindow_Id)
{
  global SelectedWindow_Title
  global SelectedWindow_ProcessName
  wingettitle, SelectedWindow_Title, ahk_id %SelectedWindow_Id%
  winget, selectedWindow_ProcessName, ProcessName, ahk_id %SelectedWindow_Id%
  SelectedWindow_Title := Trim(SelectedWindow_Title)
  SelectedWindow_ProcessName := Trim(SelectedWindow_ProcessName)
}

GlobalRButtonStart:
  getkeystate, RButtonSta, RButton, P
  if (RButtonSta == "U")
  {
    return
  }
  gosub InitGlobalRButton
  gosub DrawCircle
  gosub CntGlobalRButton
  mousegetpos, SelectedWindow_X, SelectedWindow_Y, SelectedWindow_Id
  SelectedWindow(SelectedWindow_Id)
  settimer, RButtonWatcher, 10
return
