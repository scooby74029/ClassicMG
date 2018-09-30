;AHK
;Copyright@2016 - 2018 Naythan Morey
;Email - Naythan.Morey@yahoo.com

showSettingsScreen()
{
	guicontrol, show, SettingsScreenBorder
	if(WhichGame == 1)
		whichgametxt := " Connect 4 Circles "
	if(WhichGame == 2) 
		whichgametxt := " Tic Tac Toe "
	if(WhichGame == 3)
		whichgametxt := " Checkers "
	if(WhichGame == 4)
		whichgametxt := " War (Card Game) "
	guicontrol, hide, WhichGameButton
	guicontrol,, WhichGameButton, %whichgametxt%
	guicontrol, show, WhichGameButton
	
	if(GameType == 1)
	{
		numofplyrs := "Player_VS_Computer_Game"
	}
	else
	{
		numofplyrs := "Computer_VS_Player_Game"
	}
	guicontrol, hide, NumberOfPlyrsButton
	guicontrol,, NumberOfPlyrsButton, %numofplyrs%
	guicontrol, show, NumberOfPlyrsButton
	
	if(GameType == 1)
		pl2firstbuttxt := Plyr1Name " Starts Game"
	else
		pl2firstbuttxt := Plyr2Name " Starts Game"
		
	guicontrol, hide, P2FirstButton
	guicontrol,, P2FirstButton, %pl2firstbuttxt% 
	guicontrol, show, P2FirstButton
	
	if(Difficulty == 0)
		difficultybuttxt := "Difficulty          (Easy)"
	else
		difficultybuttxt := "Difficulty          (Hard)"
	
	guicontrol, hide, DifficultyButton
	guicontrol,, DifficultyButton, %difficultybuttxt%
	guicontrol, show, DifficultyButton
	
	if(SoundAnswer == 1)
		SoundAnswertxt := "Play Sounds           (On)"
	else
		SoundAnswertxt := "Play Sounds           (Off)"
	
	guicontrol, hide, SoundAnswerButton
	guicontrol,, SoundAnswerButton, %SoundAnswertxt%
	guicontrol, show, SoundAnswerButton
	
	if(WhichGame == 1)
	{
		if(ShowAnimations == 1)
			showanimationstxt := "Animated Game Pieces        (On)"
		else
			showanimationstxt := "Animated Game Pieces        (Off)"
		guicontrol, hide, ShowAnimationsButton
		guicontrol,, ShowAnimationsButton, %showanimationstxt%
		guicontrol, show, ShowAnimationsButton
		guicontrol, hide, ReSetSettings2Button
		guicontrol, hide, ReSetGameStatsButton
		guicontrol, show, ReSetSettings1Button
	}
		
	if(WhichGame == 2) || (WhichGame == 3) || (WhichGame == 4)
	{
		guicontrol, hide, ShowAnimationsButton
		guicontrol, hide, ReSetSettings1Button
		guicontrol, show, ReSetSettings2Button
		guicontrol, show, ReSetGameStatsButton
	}
	
	if(CustomPictures == 1)
		custompictxt := "Custom Game Pieces         (On)"
	else
		custompictxt := "Custom Game Pieces         (Off)"
	guicontrol, hide, CustomPicturesButton
	guicontrol,, CustomPicturesButton, %custompictxt%
	guicontrol, show, CustomPicturesButton
	
	guicontrol, show, BackButton
	
	Gui, Show, x410 y215 h335 w490 center, Classic MG V_%Version% Settings Menu
	
	return
}
WhichGameButton()
{
	oldgame := WhichGame
	
	if(WhichGame == 1)
	{
		WhichGame := 2
	}
	else if(WhichGame == 2)
	{
		WhichGame := 3
	}
	else if(WhichGame == 3)
	{
		WhichGame := 4
	}
	else if(WhichGame == 4)
	{
		WhichGame := 1
	}
	
	if(WhichGame != oldgame)
		ChangingGames := true
	
	iniwrite, %WhichGame%, Ini\default.ini, Settings, whichgame
	loadSettings()
	showSettingsScreen()
	
	return
}
NumberOfPlyrsButton()
{
	GameType := switchplayer(GameType)
	
	if(WhichGame == 1)
		inifile := "Ini\Games\C4.ini"
	else if(WhichGame == 2)
		inifile := "Ini\Games\3T.ini"
	else if(WhichGame == 3)
		inifile := "Ini\Games\Checkers.ini"
	else if(WhichGame == 4)
		inifile := "Ini\Games\War.ini"
	
	iniwrite, %GameType%, %inifile%, Settings, gametype
	loadSettings()
	gui, hide
	showSettingsScreen()
	
	return
}
Player2FirstButton()
{
	Plyr2First := switchsettings(Plyr2First)
	
	if(Plyr2First == 1)
		PlayerNumber := 2
	else
		PlayerNumber := 1
	
	if(WhichGame == 1)
		inifile := "Ini\Games\C4.ini"
	else if(WhichGame == 2)
		inifile := "Ini\Games\3T.ini"
	else if(WhichGame == 3)
		inifile := "Ini\Games\Checkers.ini"
	else if(WhichGame == 4)
		inifile := "Ini\Games\War.ini"
	
	iniwrite, %Plyr2First%, %inifile%, Settings, plyr2first
	iniwrite, %PlayerNumber%, %inifile%, Settings, playernumber
	loadSettings()
	showSettingsScreen()
	
	return
}
DifficultyButton()
{
	Difficulty := switchsettings(Difficulty)
	
	if(WhichGame == 1)
		inifile := "Ini\Games\C4.ini"
	else if(WhichGame == 2)
		inifile := "Ini\Games\3T.ini"
	else if(WhichGame == 3)
		inifile := "Ini\Games\Checkers.ini"
	else if(WhichGame == 4)
		inifile := "Ini\Games\War.ini"
	
	iniwrite, %Difficulty%, %inifile%, Settings, difficulty
	loadSettings()
	showSettingsScreen()
	
	return
}
SoundAnswerButton()
{
	;msgbox,,,SoundAnswer(%SoundAnswer%)1
	SoundAnswer := switchsettings(SoundAnswer)
	;msgbox,,,SoundAnswer(%SoundAnswer%)
	if(WhichGame == 1)
		inifile := "Ini\Games\C4.ini"
	else if(WhichGame == 2)
		inifile := "Ini\Games\3T.ini"
	else if(WhichGame == 3)
		inifile := "Ini\Games\Checkers.ini"
	else if(WhichGame == 4)
		inifile := "Ini\Games\War.ini"
	;msgbox,,,SoundAnswer(%SoundAnswer%) inifile(%inifile%)
	iniwrite, %SoundAnswer%, %inifile%, Settings, sounds
	loadSettings()
	showSettingsScreen()
	
	return
}
ReSetSettingsButton()
{
	inifile1 := "Ini\Games\C4.ini"
	inifile2 := "Ini\Games\3T.ini"
	inifile3 := "Ini\Games\Checkers.ini"
	inifile4 := "Ini\Games\War.ini"
	x := 
	
	if(Whichgame == 1)
		x := inifile1
	if(Whichgame == 2)
		x := inifile2
	if(Whichgame == 3)
		x := inifile3
	if(Whichgame == 4)
		x := inifile4
	
	iniwrite, 1, %x%, Settings, gametype
	iniwrite, 1, %x%, Settings, playernumber
	iniwrite, 0, %x%, Settings, showanimations
	iniwrite, 0, %x%, Settings, difficulty 
	iniwrite, 0, %x%, Settings, sounds
	iniwrite, 0, %x%, Settings, plyr2first
	iniwrite, 0, %x%, Settings, custompictures
		
	iniwrite, %Plyr1Name%, %x%, PlayerNames, 1stplayer
	iniwrite, %Plyr2Name%, %x%, PlayerNames, 2ndplayer
	
	loadSettings()
	msgbox, 0x40000, Classic MG Settings Menu, Resetting All Settings To Default Complete ., 3
	showSettingsScreen()
	
	return
}
ResetGameStatsButton() 
{
	gui, submit, nohide
	whichtxt :=
	
	if(whichGame == 1)
	{
		whichtxt := "Connect 4 Circles "
		iniwrite, 0, Ini\Games\C4.ini, GameTotals, C4gametotalp1
		iniwrite, 0, Ini\Games\C4.ini, GameTotals, C4gametotalp2
		iniwrite, 0, Ini\Games\C4.ini, GameTotals, C4wongamesp1
		iniwrite, 0, Ini\Games\C4.ini, GameTotals, C4wongamesp2
		iniwrite, 0, Ini\Games\C4.ini, GameTotals, C4lostgamesp1
		iniwrite, 0, Ini\Games\C4.ini, GameTotals, C4lostgamesp2
	}
	if(WhichGame == 2)
	{
		whichtxt := "3T _ Tic Tac Toe "
		iniwrite, 0, Ini\Games\3T.ini, GameTotals, 3Tgametotalp1
		iniwrite, 0, Ini\Games\3T.ini, GameTotals, 3Tgametotalp2
		;iniwrite, 0, Ini\Games\3T.ini, GameTotals, 3Tgametotalp3
		iniwrite, 0, Ini\Games\3T.ini, GameTotals, 3Tdrawgamesp1	
		iniwrite, 0, Ini\Games\3T.ini, GameTotals, 3Tdrawgamesp2
		;iniwrite, 0, Ini\Games\3T.ini, GameTotals, 3Tdrawgamesp3
		iniwrite, 0, Ini\Games\3T.ini, GameTotals, 3Twongamesp1
		iniwrite, 0, Ini\Games\3T.ini, GameTotals, 3Twongamesp2
		;iniwrite, 0, Ini\Games\3T.ini, GameTotals, 3Twongamesp3
		iniwrite, 0, Ini\Games\3T.ini, GameTotals, 3Tlostgamesp1
		iniwrite, 0, Ini\Games\3T.ini, GameTotals, 3Tlostgamesp2
		;;iniwrite, 0, Ini\Games\3T.ini, GameTotals, 3Tlostgamesp3
	}
	if(WhichGame == 3)
	{
		whichtxt := "Checkers "
		iniwrite, 0, Ini\Games\checkers.ini, GameTotals, cgametotalp1
		iniwrite, 0, Ini\Games\checkers.ini, GameTotals, cgametotalp2
		;iniwrite, 0, Ini\Games\checkers.ini, GameTotals, cgametotalp3
		iniwrite, 0, Ini\Games\checkers.ini, GameTotals, cwongamesp1
		iniwrite, 0, Ini\Games\checkers.ini, GameTotals, cwongamesp2
		;iniwrite, 0, Ini\Games\checkers.ini, GameTotals, cwongamesp3
		iniwrite, 0, Ini\Games\checkers.ini, GameTotals, clostgamesp1
		iniwrite, 0, Ini\Games\checkers.ini, GameTotals, clostgamesp2
		;iniwrite, 0, Ini\Games\checkers.ini, GameTotals, clostgamesp3

	}
	if(WhichGame == 4)
	{
		whichtxt := "War "
		iniwrite, 0, Ini\Games\war.ini, GameTotals, Wargametotalp1
		iniwrite, 0, Ini\Games\war.ini, GameTotals, Wargametotalp2
		;iniwrite, 0, Ini\Games\war.ini, GameTotals, Wargametotalp3
		iniwrite, 0, Ini\Games\war.ini, GameTotals, Warwongamesp1
		iniwrite, 0, Ini\Games\war.ini, GameTotals, Warwongamesp2
		;iniwrite, 0, Ini\Games\war.ini, GameTotals, Warwongamesp3
		iniwrite, 0, Ini\Games\war.ini, GameTotals, Warlostgamesp1
		iniwrite, 0, Ini\Games\war.ini, GameTotals, Warlostgamesp2
		;iniwrite, 0, Ini\Games\war.ini, GameTotals, Warlostgamesp3
	}
	msgbox, 0x40000, %whichtxt% Settings Menu, Resetting Game Stats Complete., 3
	
	loadstats()
	showSettingsScreen()
	
	return
}
ShowAnimationsButton()
{
	ShowAnimations := switchsettings(ShowAnimations)
	
	inifile := "Ini\Games\C4.ini"
	
	iniwrite, %ShowAnimations%, %inifile%, Settings, showanimations
	loadSettings()
	showSettingsScreen()
	
	return
}
CustomPicturesButton()  ;;;; ---------------------------------  needs work on whichgame ---- 2 n 3 ----------------------------------------------
{
	gui, submit, nohide
	
	selectedfile := 
	
	CustomPictures := switchsettings(CustomPictures)
	
	if(CustomPictures == 1)
	{
		if(WhichGame == 1)
		{
			fileselectfile, fileselected, ,*c:\\, Please Select The Picture To Replace The Default Player 1 Picture .,*.png
			
			splitpath, fileselected, selectedfile
			ifexist, %fileselected%
			{
				msgbox, 0x40004, Connect 4 Settings, Is %selectedfile% The File You Selected ?
			}
			ifnotexist, %fileselected%
			{
				msgbox, 0x40000, Connect 4 Settings, %fileselected% Doesn't Exist ., 4
				custompictures := 0
				iniwrite, %CustomPictures%, Ini\default.ini, Settings, custompictures
				showSettingsScreen()
				return
			}
			ifmsgbox, yes
			{
				filecopy, %fileselected%, %a_workingdir%\res\C4\red.png, 1
				msgbox, 0x40000, C4 Settings, Now Using %selectedfile% As The Player 1 Game Piece ., 4
				
				fileselectfile, fileselected, ,*c:\\, Please Select The Picture To Replace The Default Player 2 Picture .,*.png
				
				splitpath, fileselected, selectedfile
				ifexist, %fileselected%
				{
					msgbox, 0x40004, C4 Settings, Is %selectedfile% The File You Selected ?
				}
				ifnotexist, %fileselected%
				{
					msgbox, 0x40000, C4 Settings, %fileselected% Doesn't Exist ., 4
					custompictures := 0
					iniwrite, %CustomPictures%, Ini\default.ini, Settings, custompictures
					showSettingsScreen()
					return
				}
				ifmsgbox, yes
				{
					filecopy, %fileselected%, %a_workingdir%\res\C4\blue.png, 1
					msgbox, 0x40000, Connect 4 Settings, Now Using %fileselected% As The Player 2 Game Piece ., 4
					;ReLoadGameBoard()
				}
				ifmsgbox, no
				{
					msgbox, 0x40000, Connect 4 Settings, Action Cancelled . Please Retry ., 3
					custompictures := 0
					iniwrite, %CustomPictures%, Ini\default.ini, Settings, custompictures
				}
				
			}
			ifmsgbox, no
			{
				msgbox, 0x40000, Connect 4 Settings, Action Cancelled . Please Retry ., 3
				custompictures := 0
				iniwrite, %CustomPictures%, Ini\default.ini, Settings, custompictures
			}
		}
		if(WhichGame == 2)
		{
			msgbox,,, Button Disabled .... work in progress, 3
			CustomPictures := 0
		}
		if(whichgame == 3)
		{
			msgbox,,, Button Disabled .... work in progress, 3
			CustomPictures := 0
		}
		if(whichGame == 4)
		{
			msgbox,,, Button Disabled .... work in progress, 3
			CustomPictures := 0
		}
	}
	else
	{
		if(WhichGame == 1)
		{
			filedelete, res\C4\red.png
			filedelete, res\C4\blue.png
			filecopy, res\C4\defaultred.png, res\C4\red.png, 1
			filecopy, res\C4\defaultblue.png, res\C4\blue.png, 1
			msgbox, 0x40000, Connect 4 Circles Settings Menu, Using Default Pictures Set ., 4
		}
		if(WhichGame == 2)
		{
		
		}
		if(whichgame == 3)
		{
		
		}
		if(whichGame == 4)
		{
		
		}
	}
	
	if(WhichGame == 1)
		inifile := "Ini\Games\C4.ini"
	else if(WhichGame == 2)
		inifile := "Ini\Games\3T.ini"
	else if(WhichGame == 3)
		inifile := "Ini\Games\Checkers.ini"
	else if(WhichGame == 4)
		inifile := "Ini\Games\War.ini"
	
	iniwrite, %CustomPictures%, %inifile%, Settings, custompictures
	loadSettings()
	showSettingsScreen()
	
	return
}
BackButton()
{
	if(ChangingGames)
	{
		gui, submit, nohide
		gui, destroy
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
		
		ChangingGames := false
	}
	else
	{
		hideSettingsScreen()
		loadSettings()
		showStartScreen()
	}
	return
}
switchplayer(playerswitcher)
{
	if(playerswitcher == 1)
		playerswitcher := 2
	else
		playerswitcher := 1
	return playerswitcher
}
switchsettings(settingsswitcher)
{
	if(settingsswitcher == 1)
		settingsswitcher := 0
	else
		settingsswitcher := 1
	return settingsswitcher
}
