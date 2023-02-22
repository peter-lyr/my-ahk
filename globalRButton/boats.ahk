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
      CountUpPre(show, action)
    }
    case "Up":
    {
      switch Mode
      {
        case 2:
        {
          CopyPre(show, action)
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
      CountUpDo(show, action)
    }
    case "Up":
    {
      switch Mode
      {
        case 2:
        {
          CopyDo(show, action)
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
      CountDownPre(show, action)
    }
    case "Up":
    {
      switch Mode
      {
        case 2:
        {
          PastePre(show, action)
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
      CountDownDo(show, action)
    }
    case "Up":
    {
      switch Mode
      {
        case 2:
        {
          PasteDo(show, action)
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
          CtrlWinRight(show, action)
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
          CtrlWinLeft(show, action)
        }
      }
    }
  }
  return 0
}
