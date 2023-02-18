RButtonEnable := 1

gosub InitCircle

#Include %A_ScriptDir%\globalRButton\_hotkey.ahk
#Include %A_ScriptDir%\globalRButton\_circle.ahk

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
