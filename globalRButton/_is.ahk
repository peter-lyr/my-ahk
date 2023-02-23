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
