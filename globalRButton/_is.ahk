IsDesktop(Window_Title)
{
  if (StrLen(Window_Title) > 0 and Window_Title != "Program Manager")
  {
    return 0
  } else
  {
    return 1
  }
}

IsDesktopOrExplorer(ProcessName)
{
  if (RegexMatch(ProcessName, "i)explorer\.exe"))
  {
    return 1
  }
  return 0
}

IsExplorer(Title, ProcessName)
{
  if (StrLen(Title) > 0 and RegexMatch(ProcessName, "i)explorer\.exe"))
  {
    Return 1
  }
  Return 0
}

IsWindowMoveOrResize()
{
  global Mode
  if (Mode == 1 or Mode == 2)
  {
    return 1
  }
  return 0
}
