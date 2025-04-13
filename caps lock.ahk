#NoEnv
SendMode Input
SetCapsLockState, AlwaysOff

*CapsLock::
CapsHeld := true
KeyWait, CapsLock
CapsHeld := false
Return

#If (CapsHeld)

w::Send, {Up}
a::Send, {Left}
s::Send, {Down}
d::Send, {Right}
q::Send, ^{Left}
e::Send, ^{Right}
f::Send, ^f

; CapsLock + g → Move to the start of the row 
g::
    if (A_PriorHotkey = "*CapsLock" or A_PriorHotkey = "g" and A_TimeSincePriorHotkey < 400)
    {
        Send, {Home}
    }
Return

; CapsLock + Shift + g → Move to the end of the row 
+g::Send, {End}

#If