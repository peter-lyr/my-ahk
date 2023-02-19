RButtonL:
  if (FlagMoveWindow)
  {
    PushMsg("松开右键: 撤销窗口移动`n松开左键: 确定")
  }
return

RButtonM:
  if (FlagResizeWindow)
  {
    PushMsg("松开右键: 撤销窗口大小改变`n松开中键: 确定")
  }
return
