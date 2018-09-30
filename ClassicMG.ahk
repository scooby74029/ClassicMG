;AHK
;Copyright@2016 - 2018  Naythan Morey
;Email - Naythan.Morey@yahoo.com

#SingleInstance ignore
#NoEnv
#include includes\GameStartUp.ahk

installfiles()

;checkforupdates()

iniread, FirstRun, Ini\default.ini, InitialRun, firstrun
if(FirstRun == "ERROR")
{
	writeDefaultSettings()
	writeDefaultStats()
}
loadSettings()
checkNonDefaultNames()
if(WhichGame == 1)
{
	menu, tray, tip, Connect 4 Circles %C4Version% Copyright@2016 - 2018
	menu, tray, icon, res\C4\C4.ico
}
else if(WhichGame == 2)
{
	menu, tray, tip, 3T - Tic Tac Toe %3TVersion% Copyright@2016 - 2018
	menu, tray, icon, res\3T\3T.ico
}
else if(WhichGame == 3)
{
	menu, tray, tip, Checkers v%CVersion% Copyright@2016 - 2018
	menu, tray, icon, res\Checkers\checkers.ico
}
else if(WhichGame == 4)
{
	menu, tray, tip, War Card Game v%WVersion% Copyright@2016 - 2018
	menu, tray, icon, res\war\war.ico
}


loadstats()
LoadMenu_Settings()
showStartScreen()

onmessage(0x200, "WM_MOUSEMOVE")


return

^d::
	debugger(msg1, msg2, msg3, msg4, msg5)
return

^l::
	checkcheckers()
return

debugger(debug1,debug2,debug3,debug4,debug5)
{
	msgbox, 0x40000, DEBUG, debugger ((%debug1%) (%debug2%) (%debug3%) (%debug4%) (%debug5%)), 10
	
	return
}
