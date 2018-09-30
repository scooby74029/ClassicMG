;AHK
;Copyright@2016 Naythan Morey
;Email - Naythan.Morey@yahoo.com

ReSetGameVarsC4()
{ 
	PlayerNumber := %PlayerNumber%
	GameComplete := false
	WINNER       := false
	loop, 42
	{
		
		box%umv% := 
		umv++
	}
	loadSettings()
	return
}

ReSetGameVars3T()
{
	PlayerNumber              := %PlayerNumber%
	WINNER                    := false
	DRAWGAME                  := false
	EndSettings               := false
	GameComplete              := false
	boardbox1                 :=
	boardbox2                 :=
	boardbox3                 :=
	boardbox4                 :=
	boardbox5                 :=
	boardbox6                 :=
	boardbox7                 :=
	boardbox8                 :=
	boardbox9                 :=
	GameInfoBorder            :=
	;                             -----------------------  stats variables
	3TTGamesp1    := 
	3TTGamesp2    :=
	3TWGamesp1    :=
	3TWGamesp2    :=
	3TLGamesp1    :=
	3TLGamesp2    :=
	3TDGamesp1    :=
	3TDGamesp2    :=
	3TTGPp1       :=
	3TTGPp2       :=
	3TTGWp1       :=
	3TTGWp2       :=
	3TTGLp1       :=
	3TTGLp2       :=
	3TTDGp1       :=  
	3TTDGp2       :=
	3TTGPp1txt    :=
	3TTGPp2txt    :=
	3TTGWp1txt    :=
	3TTGWp2txt    :=
	3TTGLp1txt    :=
	3TTGLp2txt    :=
	3TTDGp1txt    :=
	3TTDGp2txt    :=
	;  ------------------------------  who marked box on gameboard (1-9 top to bottom left to right)
	loop, 9
	{
		Tbox%unv% := 
		unv++
	}
	loadSettings()
	return
}
ReSetGameVarsCheckers() ; ------------------  needs work     ----------------------------------------
{
	vf := 1
	PlayerNumber := %PlayerNumber%
	
	loop 32
	{
		checkerbox%vf% := 
		vf++
	}
	WinningPlayer := 0
	p1remainingleft :=
	p2remainingleft :=
	p1score         :=
	p2score         := 
	p1scoretotal    :=
	p2scoretotal    := 
	
	loadSettings()
	
	return
}
ReSetGameVarsWar() ; ------------------  needs work     ----------------------------------------
{
	loadSettings()
	
	return
}
