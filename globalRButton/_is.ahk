SelectedWindow_IsDesktop()
{
  global SelectedWindow_Title
  if (StrLen(SelectedWindow_Title) > 0 and SelectedWindow_Title != "Program Manager")
  {
    return 0
  } else {
    return 1
  }
}

SelectedWindow_IsExplorer()
{
  global SelectedWindow_Title
  global SelectedWindow_ProcessName
  if (RegexMatch(SelectedWindow_ProcessName, "i)explorer\.exe") || RegexMatch(SelectedWindow_Title, "i)Program Manager"))
  {
    return 1
  }
  return 0
}
