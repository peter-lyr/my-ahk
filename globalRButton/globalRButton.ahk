RButtonEnable := 1

Mode := 1
ModeMax := 5

Direction := ""

TextCopied:=Short(clipboard)

gosub InitCircle
settimer, MstscWatcher, 10

#Include %A_ScriptDir%\globalRButton\_\_hotkey.ahk
#Include %A_ScriptDir%\globalRButton\_\_circle.ahk
#Include %A_ScriptDir%\globalRButton\_\_mark.ahk
#Include %A_ScriptDir%\globalRButton\_\_start.ahk
#Include %A_ScriptDir%\globalRButton\_\_end.ahk
#Include %A_ScriptDir%\globalRButton\_\_direction.ahk
#Include %A_ScriptDir%\globalRButton\_\_msg.ahk
#Include %A_ScriptDir%\globalRButton\_\_rbuttonLM.ahk
#Include %A_ScriptDir%\globalRButton\_\_move.ahk
#Include %A_ScriptDir%\globalRButton\_\_resize.ahk
#Include %A_ScriptDir%\globalRButton\_\_is.ahk
#Include %A_ScriptDir%\globalRButton\_\_mstsc.ahk
#Include %A_ScriptDir%\globalRButton\_\_define.ahk
#Include %A_ScriptDir%\globalRButton\watcher.ahk
#Include %A_ScriptDir%\globalRButton\rbuttonLbuttonDown.ahk
#Include %A_ScriptDir%\globalRButton\rbuttonLbuttonUp.ahk
#Include %A_ScriptDir%\globalRButton\rbuttonMbuttonDown.ahk
#Include %A_ScriptDir%\globalRButton\rbuttonMbuttonUp.ahk
#Include %A_ScriptDir%\globalRButton\rbuttonUp.ahk
#Include %A_ScriptDir%\globalRButton\rbuttonWheelDown.ahk
#Include %A_ScriptDir%\globalRButton\rbuttonWheelUp.ahk
#Include %A_ScriptDir%\globalRButton\labels\shiftWheel.ahk
#Include %A_ScriptDir%\globalRButton\labels\copy.ahk
#Include %A_ScriptDir%\globalRButton\labels\paste.ahk
#Include %A_ScriptDir%\globalRButton\labels\ctrlWinLeftRight.ahk
#Include %A_ScriptDir%\globalRButton\labels\count.ahk
#Include %A_ScriptDir%\globalRButton\labels\altTab.ahk
#Include %A_ScriptDir%\globalRButton\labels\restoreMaximizeWindow.ahk
#Include %A_ScriptDir%\globalRButton\labels\topMost.ahk
#Include %A_ScriptDir%\globalRButton\labels\ctrlAltTab.ahk
#Include %A_ScriptDir%\globalRButton\labels\activateWindow.ahk
#Include %A_ScriptDir%\globalRButton\labels\minimizeWindow.ahk
#Include %A_ScriptDir%\globalRButton\labels\volume.ahk
#Include %A_ScriptDir%\globalRButton\labels\transparency.ahk
#Include %A_ScriptDir%\globalRButton\labels\esc.ahk
#Include %A_ScriptDir%\globalRButton\labels\winComma.ahk
#Include %A_ScriptDir%\globalRButton\labels\explorer\navigate.ahk

#if RButtonEnable
RButton::gosub _RButton
#if RButtonEnable
RButton Up::gosub _RButtonUp

#if RButtonEnable
~RButton & wheelup::gosub _RButtonWheelUp
#if RButtonEnable
~RButton & wheeldown::gosub _RButtonWheelDown

#if RButtonEnable
~RButton & LButton::gosub _RButtonLButton
#if RButtonEnable
~RButton & LButton Up::gosub _RButtonLButtonUp

#if RButtonEnable
~RButton & MButton::gosub _RButtonMButton
#if RButtonEnable
~RButton & MButton Up::gosub _RButtonMButtonUp
