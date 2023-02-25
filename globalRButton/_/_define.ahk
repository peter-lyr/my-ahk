NotDefinedEventDo(show, ret)
{
  global NotDefinedEvent
  if (show == 0)
  {
    if (ret == -1)
    {
      NotDefinedEvent := 1
      ret := 0
    } else
    {
      NotDefinedEvent := 0
    }
  }
  return ret
}
