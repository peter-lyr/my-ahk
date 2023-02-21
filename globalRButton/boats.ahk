DoRButtonUp(show, action="松开右键: ")
{
  global RButtonPressCnt
  global Direction
  global msg
  switch RButtonPressCnt {
  case 1:
    switch Direction {
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
  case 2:
    msg := 2
  case 3:
    msg := 3
  case 4:
    msg := 4
  case 5:
    msg := 5
  }
  return 0
}

DoRButtonLButtonDown(show, action="按下左键: ")
{
  global RButtonPressCnt
  global Direction
  global msg
  switch RButtonPressCnt {
  case 1:
    switch Direction {
    case "Center":
      CopyPre(show, action)
      return 0
    case "RightUp":
    case "RightDown":
    case "LeftDown":
    case "LeftUp":
    case "Up":
    case "Right":
    case "Down":
    case "Left":
    }
  case 2:
    msg := 2
  case 3:
    msg := 3
  case 4:
    msg := 4
  case 5:
    msg := 5
  }
  return 0
}

DoRButtonLButtonUp(show, action="抬起左键: ")
{
  global RButtonPressCnt
  global Direction
  global msg
  switch RButtonPressCnt {
  case 1:
    switch Direction {
    case "Center":
      CopyDo(show, action)
      return 0
    case "RightUp":
    case "RightDown":
    case "LeftDown":
    case "LeftUp":
    case "Up":
    case "Right":
    case "Down":
    case "Left":
    }
  case 2:
    msg := 2
  case 3:
    msg := 3
  case 4:
    msg := 4
  case 5:
    msg := 5
  }
  return 0
}

DoRButtonMButtonDown(show, action="按下中键: ")
{
  global RButtonPressCnt
  global Direction
  global msg
  switch RButtonPressCnt {
  case 1:
    switch Direction {
    case "Center":
      PastePre(show, action)
      return 0
    case "RightUp":
    case "RightDown":
    case "LeftDown":
    case "LeftUp":
    case "Up":
    case "Right":
    case "Down":
    case "Left":
    }
  case 2:
    msg := 2
  case 3:
    msg := 3
  case 4:
    msg := 4
  case 5:
    msg := 5
  }
  return 0
}

DoRButtonMButtonUp(show, action="抬起中键: ")
{
  global RButtonPressCnt
  global Direction
  global msg
  switch RButtonPressCnt {
  case 1:
    switch Direction {
    case "Center":
      PasteDo(show, action)
      return 0
    case "RightUp":
    case "RightDown":
    case "LeftDown":
    case "LeftUp":
    case "Up":
    case "Right":
    case "Down":
    case "Left":
    }
  case 2:
    msg := 2
  case 3:
    msg := 3
  case 4:
    msg := 4
  case 5:
    msg := 5
  }
  return 0
}

DoRButtonWheelDown(show, action="向下滚轮: ")
{
  global RButtonPressCnt
  global Direction
  global msg
  switch RButtonPressCnt {
  case 1:
    switch Direction {
    case "Center":
      ShiftWheelDown(show, action)
      return 0
    case "RightUp":
    case "RightDown":
      CtrlWinRight(show, action)
      return 0
    case "LeftDown":
    case "LeftUp":
    case "Up":
    case "Right":
    case "Down":
    case "Left":
    }
  case 2:
    msg := 2
  case 3:
    msg := 3
  case 4:
    msg := 4
  case 5:
    msg := 5
  }
  return 0
}

DoRButtonWheelUp(show, action="向上滚轮: ")
{
  global RButtonPressCnt
  global Direction
  global msg
  switch RButtonPressCnt {
  case 1:
    switch Direction {
    case "Center":
      ShiftWheelUp(show, action)
      return 0
    case "RightUp":
    case "RightDown":
      CtrlWinLeft(show, action)
      return 0
    case "LeftDown":
    case "LeftUp":
    case "Up":
    case "Right":
    case "Down":
    case "Left":
    }
  case 2:
    msg := 2
  case 3:
    msg := 3
  case 4:
    msg := 4
  case 5:
    msg := 5
  }
  return 0
}
