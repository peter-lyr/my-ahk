PushMsg(text)
{
  global msg
  if (StrLen(text) > 0)
  {
    if (StrLen(msg) > 0)
    {
      msg .= "`n"
    }
    msg .= text
  }
}
