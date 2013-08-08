'' ----------------------------- ''
''        My VBScripts         ''
''     (since windows blows)     ''
''         08 July 2013          ''
''       Benjamin Wagner         ''
'' benjamin.j.wagner.1@gmail.com ''
'' ----------------------------- ''

'' -----------------------------------------------------------''
'' Check me out on GitHub @blizzrdof77                        ''
'' GitHub Repo:                                               ''
'' https:''github.com/blizzrdof77/useful-code-snippets.git    ''
'' ---------------------------------------------------------- ''


''''''''''''''''''''''''''''
''  Send Shortcut Key(s)  ''
''''''''''''''''''''''''''''
Set WshShell = CreateObject("WScript.Shell")
' * first shortcut key to execute
WshShell.SendKeys "{shortcutkey}"
' * second shortcut key to execute
WshShell.SendKeys "{shortcutkey2}"


'''''''''''''''''''''''''''
''  Toggle Hidden Files  ''
'''''''''''''''''''''''''''
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