MstscWatcher:
  mousegetpos, , , _Temp_Id
  winget, _Temp_ProcessName, ProcessName, ahk_id %_Temp_Id%
  _Temp_ProcessName := Trim(_Temp_ProcessName)
  if (RegexMatch(_Temp_ProcessName, "i)mstsc\.exe") || RegexMatch(_Temp_ProcessName, "i)sunloginclient\.exe"))
  {
    RButtonEnable &= ~(1 << 0)
  } else
  {
    RButtonEnable |= 1 << 0
  }
Return
