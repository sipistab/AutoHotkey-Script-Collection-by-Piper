#Singleinstance
#Requires AutoHotkey v2.0

; Taskbar Navigation
F1:: Send "#2"
F2:: Send "#3"
F3:: Send "#4"
F4:: Send "#5"

; Pause Script
F12::{
    Suspend True  ; Suspend the script
    Sleep 30000   ; Sleep for 30 seconds
    Suspend False ; Resume the script
}

; Control Volume
^WheelUp:: SoundSetVolume "+5" ; Increase volume
^WheelDown:: SoundSetVolume "-5" ; Decrease volume

; Notepad++ Hotkeys
LAlt & Escape::Send "^w"   ; Left Alt + Escape → Ctrl + W
RAlt & Escape::Send "^F4"  ; Right Alt + Escape → Ctrl + F4
^!Escape::Send "!{F4}"   ; Ctrl + Alt + Escape → Alt + F4

; Send PW Alt+P
!p::
{
    Send("mypassword123")
}

;The time I die
;The day I die

:*:thedayidie::{
    ; Get today's date in YYYYMMDD format
    todayDate := FormatTime(, "yyyyMMdd")

    ; Set the target future date (2047.07.12)
    targetDate := "20470712"

    ; Calculate the difference in days
    diff := DateDiff(targetDate, todayDate, "D")

    ; Replace the typed "2025.02.19" with the calculated result
    SendInput "I have " diff " days left."
}

;The week I die

:*:theweekidie::{
    ; Get today's date in YYYYMMDD format
    todayDate := FormatTime(, "yyyyMMdd")

    ; Set the target future date (2047.07.12)
    targetDate := "20470712"

    ; Calculate the difference in days
    diff := DateDiff(targetDate, todayDate, "D")

    ; Convert days to weeks (round up)
    weeks := Ceil(diff / 7)

    ; Replace the typed "thedayidie" with the calculated result
    SendInput "I have " weeks " weeks left"
}

;The month I die

:*:themonthidie::{
    ; Get today's date in YYYYMMDD format
    todayDate := FormatTime(, "yyyyMMdd")

    ; Set the target future date (2047.07.12)
    targetDate := "20470712"

    ; Calculate the difference in days
    diff := DateDiff(targetDate, todayDate, "D")

    ; Convert days to months (round up, using 30.44 days per month on average)
    months := Ceil(diff / 30.44)

    ; Replace the typed "thedayidie" with the calculated result
    SendInput "I have " months " months left."
}


;SnippinTool

^b::Run("ms-screenclip:")

; Mouse Autoclicker (Ctrl+M toggles fast left mouse clicking)
^m::{
    static toggle := false
    toggle := !toggle
    while toggle {
        Click()
        Sleep 83 ; Adjust for faster/slower clicks
        if !toggle
            break
        ; Allow interruption
        Sleep 1
    }
}
