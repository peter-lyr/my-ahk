_MarkRButtonUp:
  MarkFlagRButton |= (1 << 0)
  MarkFlagRButton |= (1 << 7)
return

_MarkRButtonWheelUp:
  MarkFlagRButton |= (1 << 0)
  MarkFlagRButton |= (1 << 9)
  MarkFlagRButton |= (1 << 8)
  MarkFlagRButton |= (1 << 11)
return

_MarkRButtonWheelDown:
  MarkFlagRButton |= (1 << 0)
  MarkFlagRButton |= (1 << 9)
  MarkFlagRButton |= (1 << 8)
  MarkFlagRButton |= (1 << 10)
return

_MarkRButtonLButton:
  MarkFlagRButton |= (1 << 0)
  MarkFlagRButton |= (1 << 1)
  MarkFlagRButton |= (1 << 8)
  MarkFlagRButton &= ~(1 << 3)
  MarkFlagRButton |= (1 << 2)
return

_MarkRButtonLButtonUp:
  MarkFlagRButton |= (1 << 0)
  MarkFlagRButton |= (1 << 1)
  MarkFlagRButton |= (1 << 8)
  MarkFlagRButton &= ~(1 << 2)
  MarkFlagRButton |= (1 << 3)
return

_MarkRButtonMButton:
  MarkFlagRButton |= (1 << 0)
  MarkFlagRButton |= (1 << 4)
  MarkFlagRButton |= (1 << 8)
  MarkFlagRButton &= ~(1 << 6)
  MarkFlagRButton |= (1 << 5)
return

_MarkRButtonMButtonUp:
  MarkFlagRButton |= (1 << 0)
  MarkFlagRButton |= (1 << 4)
  MarkFlagRButton |= (1 << 8)
  MarkFlagRButton &= ~(1 << 5)
  MarkFlagRButton |= (1 << 6)
return
