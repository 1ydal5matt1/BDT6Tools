#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

KDelay := 250 ; 10,000 = 10 seconds

;^k::
WinActivate, multiplayer-codes
Sleep, KDelay
MouseMove, 836, 1547
Send, {WheelDown}
Sleep, KDelay
Send {LButton down}
Sleep, KDelay
MouseMove, 778, 1551
Send {LButton up}
Sleep, KDelay
Send, {Ctrl down}c{Ctrl up}
Sleep, KDelay

WinActivate, BloonsTD6
Sleep KDelay
MouseMove, 1088, 936
Sleep KDelay
MouseClick, left
Sleep, KDelay
MouseMove, 963, 446
Sleep KDelay
MouseClick, left
Sleep KDelay
MouseMove, 990, 611
Sleep KDelay
MouseClick, left
Sleep KDelay
Send, ^v
Sleep KDelay
MouseMove, 1186, 611
Sleep KDelay
MouseClick, left