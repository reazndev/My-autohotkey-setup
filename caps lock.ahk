#NoEnv
SendMode Input
SetCapsLockState, AlwaysOff

*CapsLock::
CapsHeld := true
KeyWait, CapsLock
CapsHeld := false
Return

#If (CapsHeld)

; Arrow movement
w::Send, {Up}
a::Send, {Left}
s::Send, {Down}
d::Send, {Right}

; Word movement
q::Send, ^{Left}
e::Send, ^{Right}

; Row movement
9::Send, {Home}
0::Send, {End} 

; Document movement
g::Send, ^{Home}
\ & g::Send, ^{End}

; Highlighting
+w::Send, +{Up}
+a::Send, +{Left}
+s::Send, +{Down}
+d::Send, +{Right}
+q::Send, +^{Left}
+e::Send, +^{Right}

+0::Send, +{End}    ; Highlights content between cursor and start of row
+9::Send, +{Home}   ; Highlights content between cursor and end of row

; Find
f::Send, ^f

; Deletion
j::Send, {Backspace}
\ & j::Send, {Delete}
h::Send, ^{Backspace}
\ & h::Send, ^{Delete}

; (open chrome) & open new tab
t:: ; Ctrl + Alt + O
IfWinExist, ahk_exe chrome.exe ; replace chrome.exe with your browser of choice
{
    WinActivate
    Send, ^t
}
else
{
    Run, chrome.exe
    WinWaitActive, ahk_exe chrome.exe ; replace chrome.exe with your browser of choice
    Send, ^t
}
Return


#If