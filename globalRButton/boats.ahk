DoRButtonUp(show, action="松开右键: ")
{
  global Mode
  global Direction
  global msg
  switch Direction
  {
    case "Center":
    case "RightUp":
    case "RightDown":
    case "LeftDown":
    case "LeftUp":
    case "Up":
    case "Right":
      {
        switch Mode
        {
          case 1:
          {
            return AltTab(show, action)
          }
        }
      }
    case "Down":
    case "Left":
  }
  return 0
}

DoRButtonLButtonDown(show, action="按下左键: ")
{
  global Mode
  global Direction
  global msg
  switch Direction
  {
    case "Center":
    {
      return CountUpPre(show, action)
    }
    case "Up":
    {
      switch Mode
      {
        case 2:
        {
          return CopyPre(show, action)
        }
      }
    }
  }
  return 0
}

DoRButtonLButtonUp(show, action="抬起左键: ")
{
  global Mode
  global Direction
  global msg
  switch Direction
  {
    case "Center":
    {
      return CountUpDo(show, action)
    }
    case "Up":
    {
      switch Mode
      {
        case 2:
        {
          return CopyDo(show, action)
        }
      }
    }
  }
  if (show == 0)
  {
    gosub CountUpNotAllow
  }
  return 0
}

DoRButtonMButtonDown(show, action="按下中键: ")
{
  global Mode
  global Direction
  global msg
  switch Direction
  {
    case "Center":
    {
      return CountDownPre(show, action)
    }
    case "Up":
    {
      switch Mode
      {
        case 2:
        {
          return PastePre(show, action)
        }
      }
    }
  }
  return 0
}

DoRButtonMButtonUp(show, action="抬起中键: ")
{
  global Mode
  global Direction
  global msg
  switch Direction
  {
    case "Center":
    {
      return CountDownDo(show, action)
    }
    case "Up":
    {
      switch Mode
      {
        case 2:
        {
          return PasteDo(show, action)
        }
      }
    }
  }
  if (show == 0)
  {
    gosub CountDownNotAllow
  }
  return 0
}

DoRButtonWheelDown(show, action="向下滚轮: ")
{
  global Mode
  global Direction
  global msg
  switch Direction
  {
    case "RightDown":
    {
      switch Mode
      {
        case 1:
        {
          return CtrlWinRight(show, action)
        }
      }
    }
    case "Center":
    {
      switch Mode
      {
        case 1:
        {
          return ShiftWheelDown(show, action)
        }
      }
    }
  }
  return 0
}

DoRButtonWheelUp(show, action="向上滚轮: ")
{
  global Mode
  global Direction
  global msg
  switch Direction
  {
    case "RightDown":
    {
      switch Mode
      {
        case 1:
        {
          return CtrlWinLeft(show, action)
        }
      }
    }
    case "Center":
    {
      switch Mode
      {
        case 1:
        {
          return ShiftWheelUp(show, action)
        }
      }
    }
  }
  return 0
}
