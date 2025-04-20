#NoEnv
SendMode Input
SetCapsLockState, AlwaysOff

Speed := 10

*CapsLock::
CapsHeld := true
KeyWait, CapsLock
CapsHeld := false
Return

#If (CapsHeld)

;===============================================;
; Mouse config                                  ;
;===============================================;

XButton1::Send, ^v   ; Side button 1 pastes
XButton2::Send, ^c   ; Side button 2 copies

; Scrolls faster 
WheelUp::Send, % "{WheelUp " Speed "}"
WheelDown::Send, % "{WheelDown " Speed "}"

;===============================================;
; Keyboard config                               ;
;===============================================;

; Add CapsLock
Tab::CapsLock

; Flowlauncher hotkey
Space::Send, ^{Space}

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

; Copy
b:: 
Send, {Home} 
Send, +{End} 
Send, ^c
Send, {End}

c::Send, ^c
v::Send, ^v


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