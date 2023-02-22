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
      switch Mode
      {
        case 1:
      }
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
    case "Center":
    {
      switch Mode
      {
        case 1:
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
    case "Center":
    {
      switch Mode
      {
        case 1:
      }
    }
  }
  return 0
}
