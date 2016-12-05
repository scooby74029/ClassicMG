;AHK
;Copyright@2016 Naythan Morey
;Email - Naythan.Morey@yahoo.com


#include includes\StartUp.ahk

installfiles()

checkforupdates()

iniread, FirstRun, Ini\default.ini, InitialRun, firstrun
if(FirstRun == "ERROR")
{
	writeDefaultSettings()
	writeDefaultStats()
}
loadSettings()
if(WhichGame == 1)
{
	menu, tray, tip, Connect 4 Circles %version% Copyright@2016
	menu, tray, icon, res\C4\C4.ico
}
else if(WhichGame == 2)
{
	menu, tray, tip, 3T - Tic Tac Toe %version% Copyright@2016
	menu, tray, icon, res\3T\3T.ico
}
else if(WhichGame == 3)
{
	menu, tray, tip, Checkers v%version% Copyright@2016
	menu, tray, icon, res\Checkers\checkers.ico
}
else if(WhichGame == 4)
{
	menu, tray, tip, War Card Game v%version% Copyright@2016
	menu, tray, icon, res\war\war.ico
}

loadstats()
LoadMenu_Settings()
showStartScreen()

onmessage(0x200, "WM_MOUSEMOVE")


return

^d::
	;debugger(msg1, msg2, msg3, msg4, msg5)
	checkboxes()
return

debugger(x,y,z,a,b)
{
	msgbox,,, debugger ((%x%) (%y%) (%z%) (%a%) (%b%)), 10
	
	return
}
