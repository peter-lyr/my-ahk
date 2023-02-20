DoRButtonUp(show, action="松开右键: ")
{
  global RButtonPressCnt
  global Direction
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
    tooltip 2
  case 3:
    tooltip 3
  case 4:
    tooltip 4
  case 5:
    tooltip 5
  }
  return 1
}

DoRButtonLButtonDown(show, action="按下左键: ")
{
  global RButtonPressCnt
  global Direction
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
    tooltip 2
  case 3:
    tooltip 3
  case 4:
    tooltip 4
  case 5:
    tooltip 5
  }
  return 1
}

DoRButtonLButtonUp(show, action="抬起左键: ")
{
  global RButtonPressCnt
  global Direction
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
    tooltip 2
  case 3:
    tooltip 3
  case 4:
    tooltip 4
  case 5:
    tooltip 5
  }
  return 1
}

DoRButtonMButtonDown(show, action="按下中键: ")
{
  global RButtonPressCnt
  global Direction
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
    tooltip 2
  case 3:
    tooltip 3
  case 4:
    tooltip 4
  case 5:
    tooltip 5
  }
  return 1
}

DoRButtonMButtonUp(show, action="抬起中键: ")
{
  global RButtonPressCnt
  global Direction
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
    tooltip 2
  case 3:
    tooltip 3
  case 4:
    tooltip 4
  case 5:
    tooltip 5
  }
  return 1
}

DoRButtonWheelDown(show, action="向下滚轮: ")
{
  global RButtonPressCnt
  global Direction
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
    tooltip 2
  case 3:
    tooltip 3
  case 4:
    tooltip 4
  case 5:
    tooltip 5
  }
  return 1
}

DoRButtonWheelUp(show, action="向上滚轮: ")
{
  global RButtonPressCnt
  global Direction
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
    tooltip 2
  case 3:
    tooltip 3
  case 4:
    tooltip 4
  case 5:
    tooltip 5
  }
  return 1
}
