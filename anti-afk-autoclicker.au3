; Keybinds
HotKeySet("[", Interrupt)
HotKeySet("]", Quit)
HotKeySet("\", Invoke)

$interrupt = False

While True
   If $interrupt Then
	  Invoke()
   Else
	  Sleep(166)
   EndIf
WEnd

Func Interrupt()
   $interrupt = Not $interrupt
EndFunc

Func Quit()
   Exit
EndFunc

Func Invoke()
; Actions

   ; Send key to active window
   ;Send("{SPACE}")

   ; Send key directly to window (wherever it is)
   ControlSend("FINAL FANTASY XIV", null, 0, "{SPACE}")

   ; Autoclicker
   ;MouseClick("left")

   ; Holding down a key
   ;Send("{w DOWN}")
   ;Sleep(500)
   ;Send("{w UP}")

; Delays
   ; Delay
   Sleep(10000)

   ; Basic heuristic dodging delay
   ;Sleep(Random(300, 700))

   ; Free up cycles (leave this one alone)
   Sleep(1)
EndFunc