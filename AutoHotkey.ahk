#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;CLI
#C::
if WinActive("ahk_exe cmd.exe")
	WinMinimize
else if WinExist("ahk_exe cmd.exe")
	WinActivate
else
	Run, cmd.exe
return

;Notepad
#N::
if WinActive("ahk_exe notepad++.exe")
	WinMinimize
else if WinExist("ahk_exe notepad++.exe")
	WinActivate
else
	Run, notepad++.exe
return

;Outlook
#O:: 
if WinActive("ahk_exe outlook.exe")
	WinMinimize
else if WinExist("ahk_exe outlook.exe")
	WinActivate
else
	Run, outlook.exe
return

;WIN+Space = 'End'+'Enter'
#Space::
Send {End}
Send {Enter}
return