Center1_RButtonUp(show, action="松开右键: ")
{
  return 1
}

Center1_RButtonLButtonDown(show, action="按下左键: ")
{
  TestPre(show, action)
  return 1
}

Center1_RButtonLButtonUp(show, action="抬起左键: ")
{
  TestDo(show, action)
  return 1
}

Center1_RButtonMButtonDown(show, action="按下中键: ")
{
  return 1
}

Center1_RButtonMButtonUp(show, action="抬起中键: ")
{
  return 1
}

Center1_RButtonWheelDown(show, action="向下滚轮: ")
{
  ShiftWheelDown(show, action)
  return 0
}

Center1_RButtonWheelUp(show, action="向上滚轮: ")
{
  ShiftWheelUp(show, action)
  return 0
}

Center1:
  getkeystate, LButtonSta, LButton, P
  getkeystate, MButtonSta, MButton, P
  if (MarkFlagRButtonUp == 1)
  {
    if (MarkFlagRButtonUpCancel == 0)
    {
      if (Center1_RButtonUp(0))
      {
        tooltip
      }
    } else if (MarkFlagRButtonWheel == 1)
    {
      tooltip
    }
  } else if (MarkFlagRButtonLButtonDown == 1)
  {
    MarkFlagRButtonLButtonDown := 0
    if (MButtonSta == "U")
    {
      if (Center1_RButtonLButtonDown(0))
      {
        tooltip
      }
    }
  } else if (MarkFlagRButtonLButtonUp == 1)
  {
    MarkFlagRButtonLButtonUp := 0
    if (MButtonSta == "U")
    {
      if (Center1_RButtonLButtonUp(0))
      {
        tooltip
      }
    }
  } else if (MarkFlagRButtonMButtonDown == 1)
  {
    MarkFlagRButtonMButtonDown := 0
    if (LButtonSta == "U")
    {
      if (Center1_RButtonMButtonDown(0))
      {
        tooltip
      }
    }
  } else if (MarkFlagRButtonMButtonUp == 1)
  {
    MarkFlagRButtonMButtonUp := 0
    if (LButtonSta == "U")
    {
      if (Center1_RButtonMButtonUp(0))
      {
        tooltip
      }
    }
  } else if (MarkFlagRButtonWheelDown == 1)
  {
    MarkFlagRButtonWheelDown := 0
    if (LButtonSta == "U" and MButtonSta == "U")
    {
      if (Center1_RButtonWheelDown(0))
      {
        tooltip
      }
    }
  } else if (MarkFlagRButtonWheelUp == 1)
  {
    MarkFlagRButtonWheelUp := 0
    if (LButtonSta == "U" and MButtonSta == "U")
    {
      if (Center1_RButtonWheelUp(0))
      {
        tooltip
      }
    }
  } else
  {
    msg := ""
    if (MarkFlagRButtonUpCancel == 0)
    {
      Center1_RButtonUp(1)
    }
    if (LButtonSta == "U" and MButtonSta == "U")
    {
      Center1_RButtonWheelDown(1)
      Center1_RButtonWheelUp(1)
    }
    if (LButtonSta == "U")
    {
      if (MButtonSta == "U")
      {
        Center1_RButtonMButtonDown(1)
      } else
      {
        Center1_RButtonMButtonUp(1)
      }
    }
    if (MButtonSta == "U")
    {
      if (LButtonSta == "U")
      {
        Center1_RButtonLButtonDown(1)
      } else
      {
        Center1_RButtonLButtonUp(1)
      }
    }
    gosub RButtonL
    gosub RButtonM
    tooltip %msg%
  }
return
