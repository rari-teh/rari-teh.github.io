^+;::
FormatTime, CurrentDateTime,, dd/MM/yyyy
SendInput %CurrentDateTime%
return

^!+;::
FormatTime, CurrentDateTime,, MM/dd/yyyy
SendInput %CurrentDateTime%
return

^!;::
FormatTime, CurrentDateTime,, yyyy/MM/dd
SendInput %CurrentDateTime%
return