TestPre(show, action)
{
  global Test_X1
  global Test_Y1
  if (show == 0)
  {
    mousegetpos, Test_X1, Test_Y1
  } else
  {
    _Msg := action
    _Msg .= "Try msgbox 999999999999"
    PushMsg(_Msg)
  }
}

TestDo(show, action)
{
  global Test_X1
  global Test_Y1
  mousegetpos, Test_X2, Test_Y2
  if (Test_X1 == Test_X2 and Test_Y1 == Test_Y2)
  {
    if (show == 0)
    {
      msgbox 999999999999
    } else
    {
      _Msg := action
      _Msg .= "msgbox 999999999999"
      PushMsg(_Msg)
    }
  }
}
