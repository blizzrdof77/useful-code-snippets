Set WshShell = CreateObject("WScript.Shell")
theKey = "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Hidden"
setHidden = WshShell.RegRead(theKey)
If setHidden = 1 Then
setHidden = 0
WshShell.SendKeys "{F5}"
Else
setHidden = 1
WshShell.SendKeys "{F5}"
End If
WshShell.RegWrite theKey,setHidden,"REG_DWORD"
Set WshShell = Nothing