RButtonEnable := 1

RButtonPressCnt := 0
RButtonTimerOut := 15
RButtonTimerCnt := RButtonTimerOut
RButtonPressCntMax := 5

Direction := ""

TextCopied:=Short(clipboard)

gosub InitCircle

#Include %A_ScriptDir%\globalRButton\_hotkey.ahk
#Include %A_ScriptDir%\globalRButton\_circle.ahk
#Include %A_ScriptDir%\globalRButton\_count.ahk
#Include %A_ScriptDir%\globalRButton\_mark.ahk
#Include %A_ScriptDir%\globalRButton\_start.ahk
#Include %A_ScriptDir%\globalRButton\_end.ahk
#Include %A_ScriptDir%\globalRButton\_watcher.ahk
#Include %A_ScriptDir%\globalRButton\_direction.ahk
#Include %A_ScriptDir%\globalRButton\_msg.ahk
#Include %A_ScriptDir%\globalRButton\_rbuttonLM.ahk
#Include %A_ScriptDir%\globalRButton\_move.ahk
#Include %A_ScriptDir%\globalRButton\_resize.ahk
#Include %A_ScriptDir%\globalRButton\_is.ahk
#Include %A_ScriptDir%\globalRButton\_directions\center1.ahk
#Include %A_ScriptDir%\globalRButton\labels\shiftWheel.ahk
#Include %A_ScriptDir%\globalRButton\labels\copy.ahk
#Include %A_ScriptDir%\globalRButton\labels\paste.ahk

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
