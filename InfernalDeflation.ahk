#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

KDelay := 300 ; 1,000 = 1 sec

^k::ExitApp
^j:: Goto, myStart

selectLevel(Min, Max){
    Random, S, Min, Max
    
    Sleep S
    WinActivate, BloonsTD6
    Sleep S
    MouseMove, 834, 907 ;play
    Sleep S
    Click
    Sleep S
    MouseMove, 595, 975 ;beginner
    Sleep S
    Click
    Sleep S
    MouseMove, 1348, 975 ;expert
    Sleep S
    Click
    Sleep S
    MouseMove, 580, 570 ;infernal
    Sleep S
    Click
    Sleep S
    MouseMove, 631, 403 ;Easy
    Sleep S
    Click
    Sleep S
    MouseMove, 1285, 453 ;Deflation
    Sleep S
    Click
    Sleep, S+2750
    MouseMove, 965, 763 ;move to popup
    Sleep KDelay
    Click ;close popup
    Sleep S+750
}


placeVillage(Min, Max) {
    Random, vSleep0, Min, Max
    Random, vSleep1, Min, Max
    Random, vSleep2, Min, Max
    Random, vSleep3, Min, Max
    Random, vSleep4, Min, Max
    Random, vSleep5, Min, Max
    Random, vSleep6, Min, Max
    Random, vSleep7, Min, Max

    Sleep, vSleep0
    Send, k
    MouseMove, 1576, 635 ;place vill
    Sleep, vSleep1
    MouseClick, left
    Sleep, vSleep2
    MouseClick, left
    Sleep, vSleep3
    Send, 1
    Sleep, vSleep4
    Send, 1
    Sleep, vSleep5
    Send, 3
    Sleep, vSleep6
    Send, 3
    Sleep, vSleep7
    return
}
placeSniper(Min, Max) {
    Random, sSleep0, Min, Max
    Random, sSleep1, Min, Max
    Random, sSleep2, Min, Max
    Random, sSleep3, Min, Max
    Random, sSleep4, Min, Max
    Random, sSleep5, Min, Max
    Random, sSleep6, Min, Max
    Random, sSleep7, Min, Max
    Random, sSleep8, Min, Max
    Random, sSleep9, Min, Max

    Sleep, sSleep0
    Send, z
    MouseMove, 1533, 519 ;place snip
    Sleep, sSleep1
    MouseClick, left
    Sleep, sSleep2
    MouseClick, left
    Sleep, sSleep3
    Send, 2
    Sleep, sSleep4
    Send, 2
    Sleep, sSleep5
    Send, 3
    Sleep, sSleep6
    Send, 3
    Sleep, sSleep7
    Send, 3
    Sleep, sSleep8
    Send, 3
    Sleep, sSleep9
    return
}
placeAlchemist(Min, Max) {
    Random, aSleep0, Min, Max
    Random, aSleep1, Min, Max
    Random, aSleep2, Min, Max
    Random, aSleep3, Min, Max
    Random, aSleep4, Min, Max
    Random, aSleep5, Min, Max
    Random, aSleep6, Min, Max
    Random, aSleep7, Min, Max
    Random, aSleep8, Min, Max
    Random, aSleep9, Min, Max
    Random, aSleep0, Min, Max

    Sleep, aSleep0
    Send, f
    MouseMove, 1609, 499 ;place alc
    Sleep, aSleep1
    MouseClick, left
    Sleep, aSleep2
    MouseClick, left
    Sleep, aSleep3
    Send, 1
    Sleep, aSleep4
    Send, 1
    Sleep, aSleep5
    Send, 1
    Sleep, aSleep6
    Send, 1
    Sleep, aSleep7
    Send, 2
    Sleep, aSleep8
    Send, 2
    Sleep, aSleep9
    return
}
startGame(Min, Max){
    Random, Sleep0, Min, Max

    Sleep, Sleep0
    MouseClick, left
    Sleep, Sleep0
    MouseMove, 1838, 1007 ;Start Game
    Sleep, Sleep0
    MouseClick, left
    Sleep, Sleep0
    MouseClick, left
    Sleep, Sleep0
    MouseMove, 854, 560
    return
}
levelUp() {
    MouseMove, 854, 560 ;center the coursor
    Sleep, 250
    Click
    Sleep, 1000
    Click
    Sleep, 1000
    return
}
playGame() {
    x := 121
    While (x>0) {
        PixelGetColor, c, 132, 1010
        if (c = 451900) {
            SoundBeep
            SoundBeep
            levelUp()
        }
        x := x-1
        Sleep 2500
    }
    return
}
goHome(Min, Max) {
    Random, Sleep0, Min, Max

    Sleep Sleep0
    WinActivate, BloonsTD6
    MouseMove, 963, 910 ;Next button
    Sleep Sleep0
    MouseClick, left
    Sleep 250+Sleep0
    MouseMove, 698, 845 ;Home button
    Sleep Sleep0
    MouseClick, left
    Sleep 1750+Sleep0
    PixelGetColor, c, 958, 654
    if (c = 451900) { ;if todem event 
        MouseMove, 958, 654 ; cont button 1
        Sleep Sleep0
        Click
        Sleep Sleep0
        MouseMove, 821, 533 ;right monky
        Sleep Sleep0
        Click
        Sleep 500+Sleep0
        Click
        Sleep Sleep0
        MouseMove, 1125, 533 ;left monky
        Sleep Sleep0
        Click
        Sleep 500+Sleep0
        Click
        Send, {Escape}
    } else {
        return
    }
}

myStart: 
{
    selectLevel(250,265)
    Sleep KDelay

    placeVillage(250,265)
    Sleep KDelay

    placeSniper(250,265)
    Sleep KDelay

    placeAlchemist(250,265)
    Sleep, KDelay

    startGame(250,265)
    Sleep KDelay

    playGame()

    goHome(250,265)


    Goto, myStart
}
