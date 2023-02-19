SelectedWindow_IsDesktop() {
  global SelectedWindow_Title
  if (StrLen(SelectedWindow_Title) > 0 and SelectedWindow_Title != "Program Manager") {
    Return 0
  } else {
    Return 1
  }
}
