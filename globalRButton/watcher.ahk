RButtonActions:
  getkeystate, LButtonSta, LButton, P
  getkeystate, MButtonSta, MButton, P
  msg := Mode
  if (((MarkFlagRButton & (1 << 8)) >> 8) == 0)
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
  if (((MarkFlagRButton & (1 << 7)) >> 7) == 1)
  {
    if (((MarkFlagRButton & (1 << 8)) >> 8) == 0)
    {
      if (DoRButtonUp(0))
      {
        msg := ""
      }
    } else if (((MarkFlagRButton & (1 << 9)) >> 9) == 1)
    {
      msg := ""
    }
  } else if (((MarkFlagRButton & (1 << 2)) >> 2) == 1)
  {
    MarkFlagRButton &= ~(1 << 2)
    if (MButtonSta == "U")
    {
      if (DoRButtonLButtonDown(0))
      {
        msg := ""
      }
    }
  } else if (((MarkFlagRButton & (1 << 3)) >> 3) == 1)
  {
    MarkFlagRButton &= ~(1 << 3)
    if (MButtonSta == "U")
    {
      if (DoRButtonLButtonUp(0))
      {
        msg := ""
      }
    }
  } else if (((MarkFlagRButton & (1 << 5)) >> 5) == 1)
  {
    MarkFlagRButton &= ~(1 << 5)
    if (LButtonSta == "U")
    {
      if (DoRButtonMButtonDown(0))
      {
        msg := ""
      }
    }
  } else if (((MarkFlagRButton & (1 << 6)) >> 6) == 1)
  {
    MarkFlagRButton &= ~(1 << 6)
    if (LButtonSta == "U")
    {
      if (DoRButtonMButtonUp(0))
      {
        msg := ""
      }
    }
  } else if (((MarkFlagRButton & (1 << 10)) >> 10) == 1)
  {
    MarkFlagRButton &= ~(1 << 10)
    if (LButtonSta == "U" and MButtonSta == "U")
    {
      if (DoRButtonWheelDown(0))
      {
        msg := ""
      }
    }
  } else if (((MarkFlagRButton & (1 << 11)) >> 11) == 1)
  {
    MarkFlagRButton &= ~(1 << 11)
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
