TestPre(show, action) {
  if (show == 0) {
  } else {
    _Msg := action
    _Msg .= "TestPre"
    PushMsg(_Msg)
  }
}

TestDo(show, action) {
  if (show == 0) {
  } else {
    _Msg := action
    _Msg .= "TestDo"
    PushMsg(_Msg)
  }
}
