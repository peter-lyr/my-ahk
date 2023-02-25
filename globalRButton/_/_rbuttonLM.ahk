RButtonL:
  if (MoveWindowAllowed)
  {
    if (Direction == "Center")
    {
      PushMsg("松开左键: 撤销窗口位置改变`n松开右键: 确定窗口位置改变")
    } else
    {
      PushMsg("松开右键: 撤销窗口位置改变`n松开左键: 确定窗口位置改变")
    }
  }
return

RButtonM:
  if (ResizeWindowAllowed)
  {
    if (Direction == "Center")
    {
      PushMsg("松开中键: 撤销窗口大小改变`n松开右键: 确定窗口大小改变")
    } else
    {
      PushMsg("松开右键: 撤销窗口大小改变`n松开中键: 确定窗口大小改变")
    }
  }
return
