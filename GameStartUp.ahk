;AHK
;Copyright@2016 - 2018  Naythan Morey
;Email - Naythan.Morey@yahoo.com

#include includes\Globals.ahk
#include includes\GameSettings.ahk
#include includes\GameLoading.ahk
#include includes\GameMain.ahk 

installfiles()
{
	ifnotexist, res\C4
	{
		filecreatedir, res\C4
		
		fileinstall, res\C4\defaultred.png, res\C4\defaultred.png, 1
		fileinstall, res\C4\defaultblue.png, res\C4\defaultblue.png, 1
		fileinstall, res\C4\defaultred.png, res\C4\red.png, 1
		fileinstall, res\C4\defaultblue.png, res\C4\blue.png, 1
		;fileinstall, res\C4\3T.png, res\C4\3T.png, 1
		fileinstall, res\C4\C4.ico, res\C4\C4.ico, 1
	}
	
	ifnotexist, res\3T
	{
		filecreatedir, res\3T
	
		fileinstall, res\3T\defaultX.png, res\3T\x.png, 1
		fileinstall, res\3T\defaultO.png, res\3T\o.png, 1
		fileinstall, res\3T\defaultX.png, res\3T\defaultX.png, 1
		fileinstall, res\3T\defaultO.png, res\3T\defaultO.png, 1
		fileinstall, res\3T\draw1.png, res\3T\draw1.png, 1
		fileinstall, res\3T\draw2.png, res\3T\draw2.png, 1
		fileinstall, res\3T\draw3.png, res\3T\draw3.png, 1
		fileinstall, res\3T\draw4.png, res\3T\draw4.png, 1
		fileinstall, res\3T\draw5.png, res\3T\draw5.png, 1
		fileinstall, res\3T\win.png, res\3T\win.png, 1
		fileinstall, res\3T\loss.png, res\3T\loss.png, 1
		fileinstall, res\3T\3T.png, res\3T\3T.png, 1
		fileinstall, res\3T\3T.ico, res\3T\3T.ico, 1
	}
	
	ifnotexist, res\Checkers
	{
		filecreatedir, res\Checkers
		
		fileinstall, res\Checkers\defaultred.png, res\Checkers\defaultred.png, 1
		fileinstall, res\Checkers\defaultblue.png, res\Checkers\defaultblue.png, 1
		fileinstall, res\Checkers\checkers.ico, res\Checkers\checkers.ico, 1
		fileinstall, res\Checkers\defaultred.png, res\Checkers\red.png, 1
		fileinstall, res\Checkers\defaultblue.png, res\Checkers\blue.png, 1
	}
	
	ifnotexist, res\War
	{
		filecreatedir, res\War
		
		fileinstall, res\War\war.ico, res\War\war.ico
		fileinstall, res\War\defaultblue.png, res\War\bluewar.png
		fileinstall, res\War\defaultwar.png, res\War\defaultwar.png
		fileinstall, res\War\defaultwar.png, res\War\war.png
		
		filecreatedir, res\War\warcards
		
		fileinstall, res\War\warcards\1clubs.png, res\War\warcards\1clubs.png
		fileinstall, res\War\warcards\1hearts.png, res\War\warcards\1hearts.png
		fileinstall, res\War\warcards\1spades.png, res\War\warcards\1spades.png
		fileinstall, res\War\warcards\1diamonds.png, res\War\warcards\1diamonds.png
		fileinstall, res\War\warcards\2clubs.png, res\War\warcards\2clubs.png
		fileinstall, res\War\warcards\2hearts.png, res\War\warcards\2hearts.png
		fileinstall, res\War\warcards\2spades.png, res\War\warcards\2spades.png
		fileinstall, res\War\warcards\2diamonds.png, res\War\warcards\2diamonds.png
		fileinstall, res\War\warcards\3clubs.png, res\War\warcards\3clubs.png
		fileinstall, res\War\warcards\3hearts.png, res\War\warcards\3hearts.png
		fileinstall, res\War\warcards\3spades.png, res\War\warcards\3spades.png
		fileinstall, res\War\warcards\3diamonds.png, res\War\warcards\3diamonds.png
		fileinstall, res\War\warcards\4clubs.png, res\War\warcards\4clubs.png
		fileinstall, res\War\warcards\4hearts.png, res\War\warcards\4hearts.png
		fileinstall, res\War\warcards\4spades.png, res\War\warcards\4spades.png
		fileinstall, res\War\warcards\4diamonds.png, res\War\warcards\4diamonds.png
		fileinstall, res\War\warcards\5clubs.png, res\War\warcards\5clubs.png
		fileinstall, res\War\warcards\5hearts.png, res\War\warcards\5hearts.png
		fileinstall, res\War\warcards\5spades.png, res\War\warcards\5spades.png
		fileinstall, res\War\warcards\5diamonds.png, res\War\warcards\5diamonds.png
		fileinstall, res\War\warcards\6clubs.png, res\War\warcards\6clubs.png
		fileinstall, res\War\warcards\6hearts.png, res\War\warcards\6hearts.png
		fileinstall, res\War\warcards\6spades.png, res\War\warcards\6spades.png
		fileinstall, res\War\warcards\6diamonds.png, res\War\warcards\6diamonds.png
		fileinstall, res\War\warcards\7clubs.png, res\War\warcards\7clubs.png
		fileinstall, res\War\warcards\7hearts.png, res\War\warcards\7hearts.png
		fileinstall, res\War\warcards\7spades.png, res\War\warcards\7spades.png
		fileinstall, res\War\warcards\7diamonds.png, res\War\warcards\7diamonds.png
		fileinstall, res\War\warcards\8clubs.png, res\War\warcards\8clubs.png
		fileinstall, res\War\warcards\8hearts.png, res\War\warcards\8hearts.png
		fileinstall, res\War\warcards\8spades.png, res\War\warcards\8spades.png
		fileinstall, res\War\warcards\8diamonds.png, res\War\warcards\8diamonds.png
		fileinstall, res\War\warcards\9clubs.png, res\War\warcards\9clubs.png
		fileinstall, res\War\warcards\9hearts.png, res\War\warcards\9hearts.png
		fileinstall, res\War\warcards\9spades.png, res\War\warcards\9spades.png
		fileinstall, res\War\warcards\9diamonds.png, res\War\warcards\9diamonds.png
		fileinstall, res\War\warcards\10clubs.png, res\War\warcards\10clubs.png
		fileinstall, res\War\warcards\10hearts.png, res\War\warcards\10hearts.png
		fileinstall, res\War\warcards\10spades.png, res\War\warcards\10spades.png
		fileinstall, res\War\warcards\10diamonds.png, res\War\warcards\10diamonds.png
		fileinstall, res\War\warcards\11clubs.png, res\War\warcards\11clubs.png
		fileinstall, res\War\warcards\11hearts.png, res\War\warcards\11hearts.png
		fileinstall, res\War\warcards\11spades.png, res\War\warcards\11spades.png
		fileinstall, res\War\warcards\11diamonds.png, res\War\warcards\11diamonds.png
		fileinstall, res\War\warcards\12clubs.png, res\War\warcards\12clubs.png
		fileinstall, res\War\warcards\12hearts.png, res\War\warcards\12hearts.png
		fileinstall, res\War\warcards\12spades.png, res\War\warcards\12spades.png
		fileinstall, res\War\warcards\12diamonds.png, res\War\warcards\12diamonds.png
		fileinstall, res\War\warcards\13clubs.png, res\War\warcards\13clubs.png
		fileinstall, res\War\warcards\13hearts.png, res\War\warcards\13hearts.png
		fileinstall, res\War\warcards\13spades.png, res\War\warcards\13spades.png
		fileinstall, res\War\warcards\13diamonds.png, res\War\warcards\13diamonds.png
	}
	
	return
}

writeDefaultSettings()
{
	
	inifile1 := "Ini\Games\C4.ini"
	inifile2 := "Ini\Games\3T.ini"
	inifile3 := "Ini\Games\Checkers.ini"
	inifile4 := "Ini\Games\War.ini"
	x := 
	
	ifnotexist, Ini\Games
	{
		filecreatedir, Ini\Games
	}
	
	iniwrite, 1, Ini\default.ini, InitialRun, firstrun
	iniwrite, 1, Ini\default.ini, Settings, whichgame
	
	loop, 4
	{
		x :=  inifile%a_index%
		iniwrite, 1, %x%, Settings, gametype
		iniwrite, 1, %x%, Settings, playernumber
		iniwrite, 0, %x%, Settings, showanimations
		iniwrite, 0, %x%, Settings, difficulty 
		iniwrite, 0, %x%, Settings, sounds
		iniwrite, 0, %x%, Settings, custompictures
		
		iniwrite, "Player 1", %x%, PlayerNames, 1stplayer
		iniwrite, "Computer", %x%, PlayerNames, 2ndplayer
	}
	
	return
}
loadSettings()
{
	inifile1 := "Ini\Games\C4.ini"
	inifile2 := "Ini\Games\3T.ini"
	inifile3 := "Ini\Games\Checkers.ini"
	inifile4 := "Ini\Games\War.ini"
	x := 
	
	iniread, FirstRun, Ini\default.ini, InitialRun, firstrun
	iniread, WhichGame, Ini\default.ini, Settings, whichgame
	
	if(Whichgame == 1)
		x := inifile1
	if(Whichgame == 2)
		x := inifile2
	if(Whichgame == 3)
		x := inifile3
	if(Whichgame == 4)
		x := inifile4
		
	iniread, GameType, %x%, Settings, gametype
	iniread, Difficulty, %x%, Settings, difficulty 
	iniread, SoundAnswer, %x%, Settings, sounds
	iniread, PlayerNumber, %x%, Settings, playernumber
	iniread, CustomPictures, %x%, Settings, custompictures
	iniread, ShowAnimations, %x%, Settings, showanimations
	iniread, Plyr1Name, %x%, PlayerNames, 1stplayer
	
	return
}
writeDefaultStats()
{
	ifnotexist, Ini\Games
	{
		filecreatedir, Ini\Games
	}
	
	iniwrite, 0, Ini\Games\C4.ini, GameTotals, C4gametotalp1
	iniwrite, 0, Ini\Games\C4.ini, GameTotals, C4gametotalp2
	iniwrite, 0, Ini\Games\C4.ini, GameTotals, C4drawgamesp1	
	iniwrite, 0, Ini\Games\C4.ini, GameTotals, C4drawgamesp2
	iniwrite, 0, Ini\Games\C4.ini, GameTotals, C4wongamesp1
	iniwrite, 0, Ini\Games\C4.ini, GameTotals, C4wongamesp2
	iniwrite, 0, Ini\Games\C4.ini, GameTotals, C4lostgamesp1
	iniwrite, 0, Ini\Games\C4.ini, GameTotals, C4lostgamesp2
	
	iniwrite, 0, Ini\Games\3T.ini, GameTotals, 3Tgametotalp1
	iniwrite, 0, Ini\Games\3T.ini, GameTotals, 3Tgametotalp2
	iniwrite, 0, Ini\Games\3T.ini, GameTotals, 3Tdrawgamesp1	
	iniwrite, 0, Ini\Games\3T.ini, GameTotals, 3Tdrawgamesp2
	iniwrite, 0, Ini\Games\3T.ini, GameTotals, 3Twongamesp1
	iniwrite, 0, Ini\Games\3T.ini, GameTotals, 3Twongamesp2
	iniwrite, 0, Ini\Games\3T.ini, GameTotals, 3Tlostgamesp1
	iniwrite, 0, Ini\Games\3T.ini, GameTotals, 3Tlostgamesp2
	
	iniwrite, 0, Ini\Games\checkers.ini, GameTotals, Checkersgametotalp1
	iniwrite, 0, Ini\Games\checkers.ini, GameTotals, Checkersgametotalp2
	iniwrite, 0, Ini\Games\checkers.ini, GameTotals, Checkerswongamesp1
	iniwrite, 0, Ini\Games\checkers.ini, GameTotals, Checkerswongamesp2
	iniwrite, 0, Ini\Games\checkers.ini, GameTotals, Checkerslostgamesp1
	iniwrite, 0, Ini\Games\checkers.ini, GameTotals, Checkerslostgamesp2
	
	iniwrite, 0, Ini\Games\war.ini, GameTotals, Wargametotalp1
	iniwrite, 0, Ini\Games\war.ini, GameTotals, Wargametotalp2
	iniwrite, 0, Ini\Games\war.ini, GameTotals, Warwongamesp1
	iniwrite, 0, Ini\Games\war.ini, GameTotals, Warwongamesp2
	iniwrite, 0, Ini\Games\war.ini, GameTotals, Warlostgamesp1
	iniwrite, 0, Ini\Games\war.ini, GameTotals, Warlostgamesp2
	
	return
}

gettotalgames(totalcntr)
{
	total :=
	
	if(WhichGame == 1)
	{
		if(totalcntr == 1)
		{
			iniread, total, Ini\Games\C4.ini, GameTotals, C4gametotalp1
			if(total == "ERROR")
				total := 0
		}
		
		if(totalcntr == 2)
		{
			iniread, total, Ini\Games\C4.ini, GameTotals, C4gametotalp2
			if(total == "ERROR")
				total := 0
		} 
	}
	else if(WhichGame == 2)
	{
		if(totalcntr == 1)
		{
			iniread, total, Ini\Games\3T.ini, GameTotals, 3Tgametotalp1
			if(total == "ERROR")
				total := 0
		}
		
		if(totalcntr == 2)
		{
			iniread, total, Ini\Games\3T.ini, GameTotals, 3Tgametotalp2
			if(total == "ERROR")
				total := 0
		} 
	}
	else if(WhichGame == 3)
	{
		if(totalcntr == 1)
		{
			iniread, total, Ini\Games\checkers.ini, GameTotals, Checkersgametotalp1
			if(total == "ERROR")
				total := 0
		}
		
		if(totalcntr == 2)
		{
			iniread, total, Ini\Games\checkers.ini, GameTotals, Checkersgametotalp2
			if(total == "ERROR")
				total := 0
		}
	}
	else if(WhichGame == 4)
	{
		if(totalcntr == 1)
		{
			iniread, total, Ini\Games\war.ini, GameTotals, Wargametotalp1
			if(total == "ERROR")
				total := 0
		}
		
		if(totalcntr == 2)
		{
			iniread, total, Ini\Games\war.ini, GameTotals, Wargametotalp2
			if(total == "ERROR")
				total := 0
		}
	}
	
	return total
}
getwongames(woncntr)
{
	won :=
	
	if(WhichGame == 1)
	{
		if(woncntr == 1)
		{
			iniread, won, Ini\Games\C4.ini, GameTotals, C4wongamesp1
			if(won == "ERROR")
				won := 0
		}
		
		if(woncntr == 2)
		{
			iniread, won, Ini\Games\C4.ini, GameTotals, C4wongamesp2
			if(won == "ERROR")
				won := 0
		}
	}
	else if(WhichGame == 2)
	{
		if(woncntr == 1)
		{
			iniread, won, Ini\Games\3T.ini, GameTotals, 3Twongamesp1
			if(won == "ERROR")
				won := 0
		}
		
		if(woncntr == 2)
		{
			iniread, won, Ini\Games\3T.ini, GameTotals, 3Twongamesp2
			if(won == "ERROR")
				won := 0
		}
	}
	else if(WhichGame == 3)
	{
		if(woncntr == 1)
		{
			iniread, won, Ini\Games\checkers.ini, GameTotals, Checkerswongamesp1
			if(won == "ERROR")
				won := 0
		}
		
		if(woncntr == 2)
		{
			iniread, won, Ini\Games\checkers.ini, GameTotals, Checkerswongamesp2
			if(won == "ERROR")
				won := 0
		}
	}
	else if(WhichGame == 4)
	{
		if(woncntr == 1)
		{
			iniread, won, Ini\Games\war.ini, GameTotals, Warwongamesp1
			if(won == "ERROR")
				won := 0
		}
		
		if(woncntr == 2)
		{
			iniread, won, Ini\Games\war.ini, GameTotals, Warwongamesp2
			if(won == "ERROR")
				won := 0
		}
	}
	
	return won
}
getlostgames(lostcntr)
{
	lost :=
	
	if(WhichGame == 1)
	{
		if(lostcntr == 1)
		{
			iniread, lost, Ini\Games\C4.ini, GameTotals, C4lostgamesp1
			if(lost == "ERROR")
				lost := 0
		}
		
		if(lostcntr == 2)
		{
			iniread, lost, Ini\Games\C4.ini, GameTotals, C4lostgamesp2
			if(lost == "ERROR")
				lost := 0
		}
		
	}
	else if(WhichGame == 2)
	{
		if(lostcntr == 1)
		{
			iniread, lost, Ini\Games\3T.ini, GameTotals, 3Tlostgamesp1
			if(lost == "ERROR")
				lost := 0
		}
		
		if(lostcntr == 2)
		{
			iniread, lost, Ini\Games\3T.ini, GameTotals, 3Tlostgamesp2
			if(lost == "ERROR")
				lost := 0
		}
	}
	else if(WhichGame == 3)
	{
		if(lostcntr == 1)
		{
			iniread, lost, Ini\Games\checkers.ini, GameTotals, Checkerslostgamesp1
			if(lost == "ERROR")
				lost := 0
		}
		
		if(lostcntr == 2)
		{
			iniread, lost, Ini\Games\checkers.ini, GameTotals, Checkerslostgamesp2
			if(lost == "ERROR")
				lost := 0
		}
	}
	else if(WhichGame == 4)
	{
		if(lostcntr == 1)
		{
			iniread, lost, Ini\Games\war.ini, GameTotals, Warlostgamesp1
			if(lost == "ERROR")
				lost := 0
		}
		
		if(lostcntr == 2)
		{
			iniread, lost, Ini\Games\war.ini, GameTotals, Warlostgamesp2
			if(lost == "ERROR")
				lost := 0
		}
	}
	
	return lost
}
getdrawgames(drawcntr)
{
	draw :=
	
	if(WhichGame == 1)
	{
		if(drawcntr == 1)
		{
			iniread, draw, Ini\Games\C4.ini, GameTotals, C4drawgamesp1 
			if(draw == "ERROR")
				draw := 0
		}
		
		if(drawcntr == 2)
		{
			iniread, draw, Ini\Games\C4.ini, GameTotals, C4drawgamesp2 
			if(draw == "ERROR")
				draw := 0
		}
	}
	if(WhichGame == 2)
	{
		if(drawcntr == 1)
		{
			iniread, draw, Ini\Games\3T.ini, GameTotals, 3Tdrawgamesp1 
			if(draw == "ERROR")
				draw := 0
		}
		
		if(drawcntr == 2)
		{
			iniread, draw, Ini\Games\3T.ini, GameTotals, 3Tdrawgamesp2 
			if(draw == "ERROR")
				draw := 0
		}
	}
	
	return draw
}
loadstats()
{
	loop, 2
	{
		ti := a_index
		
		if(WhichGame == 1)
		{
			w := C4TGamesp%ti% := gettotalgames(a_index)
			x := C4WGamesp%ti% := getwongames(a_index)
			y := C4LGamesp%ti% := getlostgames(a_index)
			z := C4DGamesp%ti% := getdrawgames(a_index)
		}
		else if(whichGame == 2)
		{
			w := 3TTGamesp%ti% := gettotalgames(a_index)
			x := 3TWGamesp%ti% := getwongames(a_index)
			y := 3TLGamesp%ti% := getlostgames(a_index)
			z := 3TDGamesp%ti% := getdrawgames(a_index)
		}
		else if(WhichGame == 3)
		{
			w := CTGamesp%ti% := gettotalgames(a_index)
			x := CWGamesp%ti% := getwongames(a_index)
			y := CLGamesp%ti% := getlostgames(a_index)
		}
		else if(WhichGame == 4)
		{
			w := WarTGamesp%ti% := gettotalgames(a_index)
			x := WarWGamesp%ti% := getwongames(a_index)
			y := WarLGamesp%ti% := getlostgames(a_index)
		}
	}
	
	return
}
checkforupdates()
{
	;UrlDownloadToFile, https://drive.google.com/open?id=0B9FINuO9RCljamE1dk02cnRFRTA, Ini\Updates\update.txt
	;if(ERRORLEVEL)
	;	msgbox,,, ERROR
	 
	;whr := ComObjCreate("WinHttp.WinHttpRequest.5.1")
	;whr.Open("GET", "https://drive.google.com/open?id=0B9FINuO9RCljamE1dk02cnRFRTA", true)
	;whr.Send()

	;whr.WaitForResponse()
	;rersion := whr.ResponseText
	;MsgBox % rersion
	
	return
}
DeleteRunTimeFiles()
{
	fileremovedir, %a_workingdir%\res, 1
	
	return
}
WM_MOUSEMOVE()
{
    CurrControl := a_guicontrol
	
    If (CurrControl <> PrevControl and not InStr(CurrControl, " "))
	{
        ToolTip 
        SetTimer, DisplayToolTip, 500
        PrevControl := CurrControl
    }
	
    return

    DisplayToolTip:
    SetTimer, DisplayToolTip, Off
	NewTip := %CurrControl%_TT
    ToolTip  %NewTip%
    SetTimer, RemoveToolTip, 5000
    return

    RemoveToolTip:
    SetTimer, RemoveToolTip, Off
    ToolTip
    return
}
WM_MOUSEHOVER()
{
	mousegetpos, mxpos, mypos,, curcntrl
	tooltip % mxpos mypos curcntrl
	
	return
}
LoadMenu_Settings()
{
	createStartScreen()
	createSettingsScreen()
	
	return
}
createStartScreen()
{
	gametypetxt := " "
	playerstartingtext := " "
	
	whichgametxt1 := " Connect 4 Circles " 
	whichgametxt2 := " Tic Tac Toe "
	whichgametxt3 := " Checkers "
	whichgametxt4 := " War (Card Game) "
	
	gui, font, cblack bold s12
	Gui, Add, GroupBox, x20 y10 w430 h240 vstartscreenborder1 center, %whichgametxt1%
	Gui, Add, GroupBox, x20 y10 w430 h240 vstartscreenborder2 center, %whichgametxt2%
	Gui, Add, GroupBox, x20 y10 w430 h240 vstartscreenborder3 center, %whichgametxt3%
	Gui, Add, GroupBox, x20 y10 w430 h240 vstartscreenborder4 center, %whichgametxt4%
	gui, font, cblack bold s10
	Gui, Add, button, x35 y40 w400 h20 center vGameTyp gStartGame, %gametypetxt%
	gui, add, edit, x60 y70 w350 h20 center vPlyr1Name, %Plyr1Name%
	gui, add, groupbox, x110 y130 w250 h40 vStartPlayerBorder,
	gui, font, cred s10
	gui, add, text, x135 y145 w200 h20 center vPlayerStartingTxt, %playerstartingtext%
	gui, font
	gui, font, cblack bold s10
	Gui, Add, Button, x135 y180 w200 h20 center vSettings gSettingsButton, Settings
	Gui, Add, Button, x160 y210 w150 h20 center vExit gExitButton, Exit
	gui, font
	hideStartScreen() 
	
	return
}
showStartScreen()
{
	loadSettings()
	
	if(WhichGame == 1)
	{
		whichgametxt := " Connect 4 Circles "
		guicontrol, hide, StartScreenBorder4
		guicontrol, show, StartScreenBorder1
	}
	else if(WhichGame == 2) 
	{
		whichgametxt := " Tic Tac Toe "
		guicontrol, hide, StartScreenBorder1
		guicontrol, show, StartScreenBorder2
	}
	else if(WhichGame == 3)
	{
		whichgametxt := " Checkers "
		guicontrol, hide, StartScreenBorder2
		guicontrol, show, StartScreenBorder3
	}
	else if(WhichGame == 4)
	{
		whichgametxt := " War ( Card Game ) "
		guicontrol, hide, StartScreenBorder3
		guicontrol, show, StartScreenBorder4
	}
	
	gametypetxt := "Start_Game"
	if(GameType == 1)
	{
		Global GameTyp_TT := "1 Player VS. Computer Game . Player 1 Starts The Game ."
	}
	else
	{
		Global GameTyp_TT := "1 Player VS. Computer Game . Computer Starts The Game ."
	}
	guicontrol, hide, GameTyp
	guicontrol,, GameTyp, %gametypetxt%
	guicontrol, show, GameTyp
	guicontrol, hide, Plyr1Name
	guicontrol,, Plyr1Name, %Plyr1Name%
	guicontrol, show, Plyr1Name
	
	if(GameType == 1)
	{
		
		playerstartingtext := Plyr1Name " Starts Game"
		
		guicontrol, hide, PlayerStartingTxt
		guicontrol,, PlayerStartingTxt, %playerstartingtext%
		guicontrol, show, PlayerStartingTxt
	}
	else
	{
		playerstartingtext := Plyr2Name " Starts Game"
		
		guicontrol, hide, PlayerStartingTxt
		guicontrol,, PlayerStartingTxt, %playerstartingtext%
		guicontrol, show, PlayerStartingTxt
		guicontrol, hide, Plyr2Name
		guicontrol,, Plyr2Name, %Plyr2Name%
		guicontrol, show, Plyr2Name
	}
	
	guicontrol, show, StartPlayerBorder
	guicontrol, show, Settings
	guicontrol, show, Exit
	Gui, Show, x410 y215 h270 w470 center, Classic MG V_%version% Start Menu
	
	return
}
hideStartScreen()
{
	guicontrol, hide, StartScreenBorder1
	guicontrol, hide, StartScreenBorder2
	guicontrol, hide, StartScreenBorder3
	guicontrol, hide, StartScreenBorder4
	guicontrol, hide, GameTyp
	guicontrol, hide, Plyr1Name
	guicontrol, hide, StartPlayerBorder
	guicontrol, hide, PlayerStartingTxt
	guicontrol, hide, Settings
	guicontrol, hide, Exit
	
	return
}
createSettingsScreen()
{
	whichgametxt := " "
	numofplyrs := " "
	pl2firstbuttxt := " "
	difficultybuttxt := " "
	SoundAnswertxt := " "
	custompictxt := " "
	showanimationstxt := " "
	
	gui, font, cblack bold
	Gui, Add, GroupBox, x20 y10 w450 h300 vSettingsScreenBorder center, Classic MG Settings Menu
	gui, font, s10 
	gui, font, cblack bold
	Gui, Add, Button, x40 y30 w410 h20 vWhichGameButton gWhichGameButton, %whichgametxt%
	gui, add, button, x40 y65 w410 h20 vNumberOfPlyrsButton gNumberOfPlyrsButton, %numofplyrs%  
	gui, add, button, x40 y100 w410 h20 vDifficultyButton gDifficultyButton, %difficultybuttxt%
	Gui, Add, button, x40 y135 w410 h20 vSoundAnswerButton gSoundAnswerButton, %soundAnswertxt% 
	gui, add, button, x40 y165 w410 h20 vCustomPicturesButton gCustomPicturesButton, %custompictxt% 
	gui, add, button, x40 y200 w410 h20 vShowAnimationsButton gShowAnimationsButton, %showanimationstxt% 
	gui, add, button, x40 y235 w410 h20 vReSetSettings1Button gReSetSettingsButton, Reset Settings
	gui, add, button, x40 y200 w410 h20 vReSetSettings2Button gReSetSettingsButton, Reset Settings
	gui, add, button, x40 y235 w410 h20 vReSetGameStatsButton gReSetGameStatsButton, Reset Game Stats
	gui, add, button, x40 y270 w410 h20 vBackButton gBackButton, Main Menu
	gui,font
	
	hideSettingsScreen()
	 
	return
}
hideSettingsScreen()
{	
	guicontrol, hide, SettingsScreenBorder
	guicontrol, hide, WhichGameButton
	guicontrol, hide, NumberOfPlyrsButton
	guicontrol, hide, DifficultyButton
	guicontrol, hide, SoundAnswerButton
	guicontrol, hide, CustomPicturesButton
	guicontrol, hide, ReSetSettings1Button
	guicontrol, hide, ReSetSettings2Button
	guicontrol, hide, ReSetGameStatsButton
	guicontrol, hide, ShowAnimationsButton
	guicontrol, hide, BackButton
	
	return
}
LoadGames(typeofgame)
{
	createallStats(typeofgame)
	createallGameBoards(typeofgame)
	createallButtons(typeofgame)
	createallGamePieces(typeofgame)
	
	if(typeofgame == 1)
	{
		;  --------------------- C4   ----------------------------------
		C4GameLoaded := true
	}
	else if(typeofgame == 2)
	{
		;   -------------------  3T    ---------------------------------------
		3TGameLoaded := true
	}
	else if(typeofgame == 3)
	{
		;   ------------------------  checkers  -------------------------------
		CheckersGameLoaded := true
	}
	else if(typeofgame == 4)
	{
		; --------------------------  war card game  ---------------------------- 
		WarGameLoaded := true
	}
	 
	return
}
StartGame()
{
	checknondefaultnames()
	gui, hide
	hideStartScreen()
	sleep 500
	if(WhichGame == 1)
	{
		if(!C4GameLoaded)
			LoadGames(WhichGame)
	}
	if(WhichGame == 2)
	{
		if(!3TGameLoaded)
			LoadGames(WhichGame)
	}
	if(WhichGame == 3)
	{
		(!CheckersGameLoaded)
			LoadGames(WhichGame)
	}
	if(WhichGame == 4)
	{
		if(!WarGameLoaded)
			LoadGames(WhichGame)
	} 	
	showGameBoard()
	
	return
}
checkNonDefaultNames()
{
	gui, submit, nohide
	
	if(WhichGame == 1)
		inifile := "Ini\Games\C4.ini"
	else if(WhichGame == 2)
		inifile := "Ini\Games\3T.ini"
	else if(WhichGame == 3)
		inifile := "Ini\Games\Checkers.ini"
	else if(WhichGame == 4)
		inifile := "Ini\Games\War.ini"
		
	
	if(Plyr1Name == "")
	{
		Plyr1Name := "Player 1"
		iniwrite, %Plyr1Name%, %inifile%, PlayerNames, 1stplayer
		return
	}
	if(Plyr1Name != "Player 1")
		iniwrite, %Plyr1Name%, %inifile%, PlayerNames, 1stplayer
	
	iniread, Plyr1Name, %inifile%, PlayerNames, 1stplayer
	iniread, Plyr2Name, %inifile%, PlayerNames, 2ndplayer
	
	return
}
SettingsButton()
{
	checkNonDefaultNames()
	hideStartScreen()
	showSettingsScreen()
	
	return
}
GuiClose()
{
	ExitButton()
}
ExitButton()
{
	if(A_IsCompiled)
		DeleteRunTimeFiles()
	exitapp
}
