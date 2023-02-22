RButtonEnable := 1

Mode := 0
ModeMax := 5

Direction := ""

TextCopied:=Short(clipboard)

gosub InitCircle
settimer, MstscWatcher, 10

#Include %A_ScriptDir%\globalRButton\_hotkey.ahk
#Include %A_ScriptDir%\globalRButton\_circle.ahk
#Include %A_ScriptDir%\globalRButton\_mark.ahk
#Include %A_ScriptDir%\globalRButton\_start.ahk
#Include %A_ScriptDir%\globalRButton\_end.ahk
#Include %A_ScriptDir%\globalRButton\_direction.ahk
#Include %A_ScriptDir%\globalRButton\_msg.ahk
#Include %A_ScriptDir%\globalRButton\_rbuttonLM.ahk
#Include %A_ScriptDir%\globalRButton\_move.ahk
#Include %A_ScriptDir%\globalRButton\_resize.ahk
#Include %A_ScriptDir%\globalRButton\_is.ahk
#Include %A_ScriptDir%\globalRButton\_mstsc.ahk
#Include %A_ScriptDir%\globalRButton\watcher.ahk
#Include %A_ScriptDir%\globalRButton\boats.ahk
#Include %A_ScriptDir%\globalRButton\labels\shiftWheel.ahk
#Include %A_ScriptDir%\globalRButton\labels\copy.ahk
#Include %A_ScriptDir%\globalRButton\labels\paste.ahk
#Include %A_ScriptDir%\globalRButton\labels\ctrlWinLeftRight.ahk
#Include %A_ScriptDir%\globalRButton\labels\count.ahk
#Include %A_ScriptDir%\globalRButton\labels\altTab.ahk

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
