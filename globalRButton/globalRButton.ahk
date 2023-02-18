RButtonEnable := 1

RButtonPressCnt := 0
RButtonTimerOut := 15
RButtonTimerCnt := RButtonTimerOut
RButtonPressCntMax := 5

gosub InitCircle

#Include %A_ScriptDir%\globalRButton\_hotkey.ahk
#Include %A_ScriptDir%\globalRButton\_circle.ahk
#Include %A_ScriptDir%\globalRButton\_count.ahk
#Include %A_ScriptDir%\globalRButton\_mark.ahk
#Include %A_ScriptDir%\globalRButton\_start.ahk
#Include %A_ScriptDir%\globalRButton\_end.ahk

#if RButtonEnable
RButton::gosub _RButton
#if RButtonEnable
RButton Up::gosub _RButtonUp

#if RButtonEnable
~RButton & WheelUp::gosub _RButtonWheelUp
#if RButtonEnable
~RButton & WheelDown::gosub _RButtonWheelDown

#if RButtonEnable
~RButton & LButton::gosub _RButtonLButton
#if RButtonEnable
~RButton & LButton Up::gosub _RButtonLButtonUp

#if RButtonEnable
~RButton & MButton::gosub _RButtonMButton
#if RButtonEnable
~RButton & MButton Up::gosub _RButtonMButtonUp
