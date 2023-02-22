RButtonL:
  if (MoveWindowAllowed)
  {
    PushMsg("松开右键: 撤销窗口位置改变`n松开左键: 确定窗口位置改变")
  }
return

RButtonM:
  if (ResizeWindowAllowed)
  {
    PushMsg("松开右键: 撤销窗口大小改变`n松开中键: 确定窗口大小改变")
  }
return
