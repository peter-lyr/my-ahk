ShiftWheelUp(show, action) {
  if (show == 0) {
    send, {shift down}{wheelup}
    send, {shift Up}
  } else {
    _Msg := action
    _Msg .= "<shift-wheelup>"
    PushMsg(_Msg)
  }
}

ShiftWheelDown(show, action) {
  if (show == 0) {
    send, {shift down}{wheeldown}
    send, {shift Up}
  } else {
    _Msg := action
    _Msg .= "<shift-wheeldown>"
    PushMsg(_Msg)
  }
}
