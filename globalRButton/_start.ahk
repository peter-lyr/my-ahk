InitGlobalRButton:
  MarkFlagRButton = 0
  ; MarkFlagRButtonAll ; 0
  ; MarkFlagRButtonLButton ; 1
  ; MarkFlagRButtonLButtonDown ; 2
  ; MarkFlagRButtonLButtonUp ; 3
  ; MarkFlagRButtonMButton ; 4
  ; MarkFlagRButtonMButtonDown ; 5
  ; MarkFlagRButtonMButtonUp ; 6
  ; MarkFlagRButtonUp ; 7
  ; MarkFlagRButtonUpCancel ; 8
  ; MarkFlagRButtonWheel ; 9
  ; MarkFlagRButtonWheelDown ; 10
  ; MarkFlagRButtonWheelUp ; 11
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
