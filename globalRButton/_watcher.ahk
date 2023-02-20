RButtonActions:
  getkeystate, LButtonSta, LButton, P
  getkeystate, MButtonSta, MButton, P
  msg := ""
  if (MarkFlagRButtonUpCancel == 0)
  {
    DoRButtonUp(1)
  }
  if (LButtonSta == "U" and MButtonSta == "U")
  {
    DoRButtonWheelDown(1)
    DoRButtonWheelUp(1)
  }
  if (LButtonSta == "U")
  {
    if (MButtonSta == "U")
    {
      DoRButtonMButtonDown(1)
    } else
    {
      DoRButtonMButtonUp(1)
    }
  }
  if (MButtonSta == "U")
  {
    if (LButtonSta == "U")
    {
      DoRButtonLButtonDown(1)
    } else
    {
      DoRButtonLButtonUp(1)
    }
  }
  gosub RButtonL
  gosub RButtonM
  if (MarkFlagRButtonUp == 1)
  {
    if (MarkFlagRButtonUpCancel == 0)
    {
      if (DoRButtonUp(0))
      {
        msg := ""
      }
    } else if (MarkFlagRButtonWheel == 1)
    {
      msg := ""
    }
  } else if (MarkFlagRButtonLButtonDown == 1)
  {
    MarkFlagRButtonLButtonDown := 0
    if (MButtonSta == "U")
    {
      if (DoRButtonLButtonDown(0))
      {
        msg := ""
      }
    }
  } else if (MarkFlagRButtonLButtonUp == 1)
  {
    MarkFlagRButtonLButtonUp := 0
    if (MButtonSta == "U")
    {
      if (DoRButtonLButtonUp(0))
      {
        msg := ""
      }
    }
  } else if (MarkFlagRButtonMButtonDown == 1)
  {
    MarkFlagRButtonMButtonDown := 0
    if (LButtonSta == "U")
    {
      if (DoRButtonMButtonDown(0))
      {
        msg := ""
      }
    }
  } else if (MarkFlagRButtonMButtonUp == 1)
  {
    MarkFlagRButtonMButtonUp := 0
    if (LButtonSta == "U")
    {
      if (DoRButtonMButtonUp(0))
      {
        msg := ""
      }
    }
  } else if (MarkFlagRButtonWheelDown == 1)
  {
    MarkFlagRButtonWheelDown := 0
    if (LButtonSta == "U" and MButtonSta == "U")
    {
      if (DoRButtonWheelDown(0))
      {
        msg := ""
      }
    }
  } else if (MarkFlagRButtonWheelUp == 1)
  {
    MarkFlagRButtonWheelUp := 0
    if (LButtonSta == "U" and MButtonSta == "U")
    {
      if (DoRButtonWheelUp(0))
      {
        msg := ""
      }
    }
  }
  tooltip %msg%
return

RButtonWatcher:
  getkeystate, RButtonSta, RButton, P
  if (RButtonSta == "U")
  {
    settimer, RButtonWatcher, off
  }
  gosub MouseCursorDirection
  gosub RButtonActions
return
