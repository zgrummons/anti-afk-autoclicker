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
	  ; Basic heuristic dodging
	  ;Sleep(Random(300, 700))
   EndIf
WEnd

Func Interrupt()
   $interrupt = Not $interrupt
EndFunc

Func Quit()
   Exit
EndFunc

Func Invoke()
   ; Send key to active window
   ;Send("{SPACE}")

   ; Send key directly to window (wherever it is)
   ControlSend("FINAL FANTASY XIV", null, 0, "{SPACE}")
   Sleep(10000)

   ; Autoclicker
   ;MouseClick("left")

   ; Holding down a key
   ;Send("{w DOWN}")
   ;Sleep(500)
   ;Send("{w UP}")

   ; Free up cycles
   Sleep(1)
EndFunc