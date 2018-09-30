;AHK
;Copyright@2016 - 2018  Naythan Morey
;Email - Naythan.Morey@yahoo.com

;   -----------------              C4        -----------------------------------------------

hideC4GameBoard()
{
	guicontrol, hide, bx1
	guicontrol, hide, bx2
	guicontrol, hide, bx3
	guicontrol, hide, bx4
	guicontrol, hide, bx5
	guicontrol, hide, bx6
	guicontrol, hide, bx7
	guicontrol, hide, bx8
	guicontrol, hide, bx9
	guicontrol, hide, bx10
	guicontrol, hide, bx11
	guicontrol, hide, bx12
	guicontrol, hide, bx13
	guicontrol, hide, bx14
	guicontrol, hide, bx15
	guicontrol, hide, bx16
	guicontrol, hide, bx17
	guicontrol, hide, bx18
	guicontrol, hide, bx19
	guicontrol, hide, bx20
	guicontrol, hide, bx21
	guicontrol, hide, bx22
	guicontrol, hide, bx23
	guicontrol, hide, bx24
	guicontrol, hide, bx25
	guicontrol, hide, bx26
	guicontrol, hide, bx27
	guicontrol, hide, bx28
	guicontrol, hide, bx29
	guicontrol, hide, bx30
	guicontrol, hide, bx31
	guicontrol, hide, bx32
	guicontrol, hide, bx33
	guicontrol, hide, bx34
	guicontrol, hide, bx35
	guicontrol, hide, bx36
	guicontrol, hide, bx37
	guicontrol, hide, bx38
	guicontrol, hide, bx39
	guicontrol, hide, bx40
	guicontrol, hide, bx41
	guicontrol, hide, bx42
	guicontrol, hide, GameName
	guicontrol, hide, GameInfo
	guicontrol, hide, EndTxt
	guicontrol, hide, Plyr1Turn
	guicontrol, hide, Plyr2Turn
	guicontrol, hide, player1piece
	guicontrol, hide, player2piece
	return
}
hideC4Buttons()
{
	guicontrol, hide, Reply
	guicontrol, hide, Sett
	guicontrol, hide, Ext
	return
}
hideC4Pictures()
{
	guicontrol, hide, box1picb
	guicontrol, hide, box1picr
	guicontrol, hide, box2picb
	guicontrol, hide, box2picr
	guicontrol, hide, box3picb
	guicontrol, hide, box3picr
	guicontrol, hide, box4picb
	guicontrol, hide, box4picr
	guicontrol, hide, box5picb
	guicontrol, hide, box5picr
	guicontrol, hide, box6picb
	guicontrol, hide, box6picr
	guicontrol, hide, box7picb
	guicontrol, hide, box7picr
	guicontrol, hide, box8picb
	guicontrol, hide, box8picr
	guicontrol, hide, box9picb
	guicontrol, hide, box9picr
	guicontrol, hide, box10picb
	guicontrol, hide, box10picr
	guicontrol, hide, box11picb
	guicontrol, hide, box11picr
	guicontrol, hide, box12picb
	guicontrol, hide, box12picr
	guicontrol, hide, box13picb
	guicontrol, hide, box13picr
	guicontrol, hide, box14picb
	guicontrol, hide, box14picr
	guicontrol, hide, box15picb
	guicontrol, hide, box15picr
	guicontrol, hide, box16picb
	guicontrol, hide, box16picr
	guicontrol, hide, box17picb
	guicontrol, hide, box17picr
	guicontrol, hide, box18picb
	guicontrol, hide, box18picr
	guicontrol, hide, box19picb
	guicontrol, hide, box19picr
	guicontrol, hide, box20picb
	guicontrol, hide, box20picr
	guicontrol, hide, box21picb
	guicontrol, hide, box21picr
	guicontrol, hide, box22picb
	guicontrol, hide, box22picr
	guicontrol, hide, box23picb
	guicontrol, hide, box23picr
	guicontrol, hide, box24picb
	guicontrol, hide, box24picr
	guicontrol, hide, box25picb
	guicontrol, hide, box25picr
	guicontrol, hide, box26picb
	guicontrol, hide, box26picr
	guicontrol, hide, box27picb
	guicontrol, hide, box27picr
	guicontrol, hide, box28picb
	guicontrol, hide, box28picr
	guicontrol, hide, box29picb
	guicontrol, hide, box29picr
	guicontrol, hide, box30picb
	guicontrol, hide, box30picr
	guicontrol, hide, box31picb
	guicontrol, hide, box31picr
	guicontrol, hide, box32picb
	guicontrol, hide, box32picr
	guicontrol, hide, box33picb
	guicontrol, hide, box33picr
	guicontrol, hide, box34picb
	guicontrol, hide, box34picr
	guicontrol, hide, box35picb
	guicontrol, hide, box35picr
	guicontrol, hide, box36picb
	guicontrol, hide, box36picr
	guicontrol, hide, box37picb
	guicontrol, hide, box37picr
	guicontrol, hide, box38picb
	guicontrol, hide, box38picr
	guicontrol, hide, box39picb
	guicontrol, hide, box39picr
	guicontrol, hide, box40picb
	guicontrol, hide, box40picr
	guicontrol, hide, box41picb
	guicontrol, hide, box41picr
	guicontrol, hide, box42picb
	guicontrol, hide, box42picr
	guicontrol, hide, moving1
	guicontrol, hide, moving2
	guicontrol, hide, player1piece
	guicontrol, hide, player2piece
	return
}
hideC4PlyrTurnNames()
{
	guicontrol, hide, Plyr1Turn
	guicontrol, hide, Plyr2Turn
	return
}
;       ---------------------------       3T     --------------------------------------------

hide3TGameBoard()
{
	guicontrol, hide, boardbox1
	guicontrol, hide, boardbox2
	guicontrol, hide, boardbox3
	guicontrol, hide, boardbox4
	guicontrol, hide, boardbox5
	guicontrol, hide, boardbox6
	guicontrol, hide, boardbox7
	guicontrol, hide, boardbox8
	guicontrol, hide, boardbox9
	hide3TBorderNPlayers()
	return
}
hide3TBorderNPlayers()
{
	guicontrol, hide, GameTxt
	guicontrol, hide, OverTxt
	guicontrol, hide, GameInfoBorder
	guicontrol, hide, Pl1Stats
	guicontrol, hide, Pl2Stats
	guicontrol, hide, anp1
	guicontrol, hide, anp2
	return
}
hide3TPlyrTurn()
{
	guicontrol, hide, anp1
	guicontrol, hide, anp2
	return
}
hide3TGameInfoBorder()
{
	guicontrol, hide, GameInfoBorder
	return
}
hide3TButtons()
{
	
	guicontrol, hide, Replyy
	guicontrol, hide, Set
	guicontrol, hide, Extt
	return
}
hide3TPics()
{
	guicontrol, hide, b1x
	guicontrol, hide, b1o
	guicontrol, hide, b2x
	guicontrol, hide, b2o
	guicontrol, hide, b3x
	guicontrol, hide, b3o
	guicontrol, hide, b4x
	guicontrol, hide, b4o
	guicontrol, hide, b5x
	guicontrol, hide, b5o
	guicontrol, hide, b6x
	guicontrol, hide, b6o
	guicontrol, hide, b7x
	guicontrol, hide, b7o
	guicontrol, hide, b8x
	guicontrol, hide, b8o
	guicontrol, hide, b9x
	guicontrol, hide, b9o
	guicontrol, hide, winpic1
	guicontrol, hide, winpic2
	guicontrol, hide, losspic1
	guicontrol, hide, losspic2
	guicontrol, hide, drawpic1
	guicontrol, hide, drawpic2
	guicontrol, hide, drawpic3
	guicontrol, hide, drawpic4
	guicontrol, hide, drawpic5
	guicontrol, hide, drawpic6
	guicontrol, hide, drawpic7
	guicontrol, hide, drawpic8
	guicontrol, hide, drawpic9
	guicontrol, hide, drawpic10
	guicontrol, hide, moving1
	guicontrol, hide, moving2
	guicontrol, hide, 3Tp1piece
	guicontrol, hide, 3Tp2piece
	return
}
hide3TPlyrPiece()
{
	guicontrol, hide, 3Tp1piece
	guicontrol, hide, 3Tp2piece
	return
}
; ----------------------------------- checkers -----------------------------------

hideCheckersGameBoard()
{
	guicontrol, hide, cbx1
	guicontrol, hide, cbx2
	guicontrol, hide, cbx3
	guicontrol, hide, cbx4
	guicontrol, hide, cbx5
	guicontrol, hide, cbx6
	guicontrol, hide, cbx7
	guicontrol, hide, cbx8
	guicontrol, hide, cbx9
	guicontrol, hide, cbx10
	guicontrol, hide, cbx11
	guicontrol, hide, cbx12
	guicontrol, hide, cbx13
	guicontrol, hide, cbx14
	guicontrol, hide, cbx15
	guicontrol, hide, cbx16
	guicontrol, hide, cbx17
	guicontrol, hide, cbx18
	guicontrol, hide, cbx19
	guicontrol, hide, cbx20
	guicontrol, hide, cbx21
	guicontrol, hide, cbx22
	guicontrol, hide, cbx23
	guicontrol, hide, cbx24
	guicontrol, hide, cbx25
	guicontrol, hide, cbx26
	guicontrol, hide, cbx27
	guicontrol, hide, cbx28
	guicontrol, hide, cbx29
	guicontrol, hide, cbx30
	guicontrol, hide, cbx31
	guicontrol, hide, cbx32
	
	hideCheckersPositionborders()
	hideCheckersPlayerTurn()
	hidePicsCheckers()
	hidePlayerPieces()
	
	return
}
hideCheckersButtons()
{
	guicontrol, hide, Creply
	guicontrol, hide, exitt
	guicontrol, hide, Mmenu
	
	return
}
hideCheckersPositionborders()
{
	guicontrol, hide, positionborder1
	guicontrol, hide, positionborder2
	guicontrol, hide, positionborder3
	
	guicontrol, hide, p1remaining
	guicontrol, hide, p2remaining
	guicontrol, hide, p1remainingtxt
	guicontrol, hide, p2remainingtxt
	guicontrol, hide, p1score
	guicontrol, hide, p2score
	guicontrol, hide, p1scoretxt
	guicontrol, hide, p2scoretxt
	
	return
}
hideCheckersPlayerTurn()
{
	guicontrol, hide, Position1Turn
	guicontrol, hide, Position2Turn
	guicontrol, hide, Position3Turn
	
	return
}
hideStatsCheckers()
{
	guicontrol, hide, CTGPp1txt
	guicontrol, hide, CTGWp1txt
	guicontrol, hide, CTGLp1txt
	guicontrol, hide, CTGPp1
	guicontrol, hide, CTGWp1
	guicontrol, hide, CTGLp1
	
	guicontrol, hide, CTGPp2txt
	guicontrol, hide, CTGWp2txt
	guicontrol, hide, CTGLp2txt
	guicontrol, hide, CTGPp2
	guicontrol, hide, CTGWp2
	guicontrol, hide, CTGLp2
	
	return
}
hidePicsCheckers()
{
	guicontrol, hide, p1pic1
	guicontrol, hide, p2pic1
	guicontrol, hide, p1pic2
	guicontrol, hide, p2pic2
	guicontrol, hide, p1pic3
	guicontrol, hide, p2pic3
	guicontrol, hide, p1pic4
	guicontrol, hide, p2pic4
	guicontrol, hide, p1pic5
	guicontrol, hide, p2pic5
	guicontrol, hide, p1pic6
	guicontrol, hide, p2pic6
	guicontrol, hide, p1pic7
	guicontrol, hide, p2pic7
	guicontrol, hide, p1pic8
	guicontrol, hide, p2pic8
	guicontrol, hide, p1pic9
	guicontrol, hide, p2pic9
	guicontrol, hide, p1pic10
	guicontrol, hide, p2pic10
	guicontrol, hide, p1pic11
	guicontrol, hide, p2pic11
	guicontrol, hide, p1pic12
	guicontrol, hide, p2pic12
	guicontrol, hide, p1pic13
	guicontrol, hide, p2pic13
	guicontrol, hide, p1pic14
	guicontrol, hide, p2pic14
	guicontrol, hide, p1pic15
	guicontrol, hide, p2pic15
	guicontrol, hide, p1pic16
	guicontrol, hide, p2pic16
	guicontrol, hide, p1pic17
	guicontrol, hide, p2pic17
	guicontrol, hide, p1pic18
	guicontrol, hide, p2pic18
	guicontrol, hide, p1pic19
	guicontrol, hide, p2pic19
	guicontrol, hide, p1pic20
	guicontrol, hide, p2pic20
	guicontrol, hide, p1pic21
	guicontrol, hide, p2pic21
	guicontrol, hide, p1pic22
	guicontrol, hide, p2pic22
	guicontrol, hide, p1pic23
	guicontrol, hide, p2pic23
	guicontrol, hide, p1pic24
	guicontrol, hide, p2pic24
	guicontrol, hide, p1pic25
	guicontrol, hide, p2pic25
	guicontrol, hide, p1pic26
	guicontrol, hide, p2pic26
	guicontrol, hide, p1pic27
	guicontrol, hide, p2pic27
	guicontrol, hide, p1pic28
	guicontrol, hide, p2pic28
	guicontrol, hide, p1pic29
	guicontrol, hide, p2pic29
	guicontrol, hide, p1pic30
	guicontrol, hide, p2pic30
	guicontrol, hide, p1pic31
	guicontrol, hide, p2pic31
	guicontrol, hide, p1pic32
	guicontrol, hide, p2pic32
	
	guicontrol, hide, moving1
	guicontrol, hide, moving2
	
	guicontrol, hide, kp1pic1
	guicontrol, hide, kp2pic1
	guicontrol, hide, kp1pic2
	guicontrol, hide, kp2pic2
	guicontrol, hide, kp1pic3
	guicontrol, hide, kp2pic3
	guicontrol, hide, kp1pic4
	guicontrol, hide, kp2pic4
	guicontrol, hide, kp1pic5
	guicontrol, hide, kp2pic5
	guicontrol, hide, kp1pic6
	guicontrol, hide, kp2pic6
	guicontrol, hide, kp1pic7
	guicontrol, hide, kp2pic7
	guicontrol, hide, kp1pic8
	guicontrol, hide, kp2pic8
	guicontrol, hide, kp1pic9
	guicontrol, hide, kp2pic9
	guicontrol, hide, kp1pic10
	guicontrol, hide, kp2pic10
	guicontrol, hide, kp1pic11
	guicontrol, hide, kp2pic11
	guicontrol, hide, kp1pic12
	guicontrol, hide, kp2pic12
	guicontrol, hide, kp1pic13
	guicontrol, hide, kp2pic13
	guicontrol, hide, kp1pic14
	guicontrol, hide, kp2pic14
	guicontrol, hide, kp1pic15
	guicontrol, hide, kp2pic15
	guicontrol, hide, kp1pic16
	guicontrol, hide, kp2pic16
	guicontrol, hide, kp1pic17
	guicontrol, hide, kp2pic17
	guicontrol, hide, kp1pic18
	guicontrol, hide, kp2pic18
	guicontrol, hide, kp1pic19
	guicontrol, hide, kp2pic19
	guicontrol, hide, kp1pic20
	guicontrol, hide, kp2pic20
	guicontrol, hide, kp1pic21
	guicontrol, hide, kp2pic21
	guicontrol, hide, kp1pic22
	guicontrol, hide, kp2pic22
	guicontrol, hide, kp1pic23
	guicontrol, hide, kp2pic23
	guicontrol, hide, kp1pic24
	guicontrol, hide, kp2pic24
	guicontrol, hide, kp1pic25
	guicontrol, hide, kp2pic25
	guicontrol, hide, kp1pic26
	guicontrol, hide, kp2pic26
	guicontrol, hide, kp1pic27
	guicontrol, hide, kp2pic27
	guicontrol, hide, kp1pic28
	guicontrol, hide, kp2pic28
	guicontrol, hide, kp1pic29
	guicontrol, hide, kp2pic29
	guicontrol, hide, kp1pic30
	guicontrol, hide, kp2pic30
	guicontrol, hide, kp1pic31
	guicontrol, hide, kp2pic31
	guicontrol, hide, kp1pic32
	guicontrol, hide, kp2pic32
	
	guicontrol, hide, moving1k
	guicontrol, hide, moving2k
	
	return
}
hidePlayerPieces()
{
	guicontrol, hide, PlyrPiece1
	guicontrol, hide, PlyrPiece2
	
	return
}
;  ---------------------------------    war card game    --------------------------------------------------------------

hideWarBoard()
{
	guicontrol, hide, WarPlyrBorder1
	guicontrol, hide, WarPlyrBorder2
	guicontrol, hide, WarPlyrBorder3
	
	hideWarPlyrTurn()
	hidePlayercardsleft()
	hidePlayercardsleftnum()
	
	return
}
hideWarButtons()
{
	guicontrol, hide, P1But
	guicontrol, hide, P2But
	
	return
}
hideWarPics()
{
	guicontrol, hide, pic1p1war
	guicontrol, hide, pic2p1war
	guicontrol, hide, pic3p1war
	guicontrol, hide, pic4p1war
	
	guicontrol, hide, pic1p2war
	guicontrol, hide, pic2p2war
	guicontrol, hide, pic3p2war
	guicontrol, hide, pic4p2war
	
	return
}
hideWarPlyrTurn()
{
	guicontrol, hide, WarPl1Turn
	guicontrol, hide, WarPl2Turn
	guicontrol, hide, WarPl3Turn
	
	return
}
hidePlayercardsleft()
{
	guicontrol, hide, pos1cardsleft
	guicontrol, hide, pos2cardsleft
	
	return
}
hidePlayercardsleftnum()
{
	guicontrol, hide, pos1totalcards
	guicontrol, hide, pos2totalcards
	
	return
}
; --------------------------------  All Games ----------------------------------------------------------------------------

createallGamePieces(gamenumber)
{
	if(gamenumber == 1)
	{
		Gui, Add, Picture, vmoving1, %redpicture%
		Gui, Add, Picture, vmoving2, %bluepicture%
		Gui, Add, Picture, x35 y45 w100 h70 vbox1picb, %bluepicture%
		Gui, Add, Picture, x35 y45 w100 h70 vbox1picr, %redpicture%
		Gui, Add, Picture, x155 y45 w100 h70 vbox2picb, %bluepicture%
		Gui, Add, Picture, x155 y45 w100 h70 vbox2picr, %redpicture%
		gui, add, picture, x275 y45 w100 h70 vbox3picb, %bluepicture%
		gui, add, picture, x275 y45 w100 h70 vbox3picr, %redpicture%
		gui, add, picture, x395 y45 w100 h70 vbox4picb, %bluepicture%
		gui, add, picture, x395 y45 w100 h70 vbox4picr, %redpicture%
		Gui, Add, Picture, x515 y45 w100 h70 vbox5picb, %bluepicture%
		Gui, Add, Picture, x515 y45 w100 h70 vbox5picr, %redpicture%
		gui, add, picture, x635 y45 w100 h70 vbox6picb, %bluepicture%
		gui, add, picture, x635 y45 w100 h70 vbox6picr, %redpicture%
		gui, add, picture, x755 y45 w100 h70 vbox7picb, %bluepicture%
		gui, add, picture, x755 y45 w100 h70 vbox7picr, %redpicture%
		gui, add, picture, x35 y135 w100 h70 vbox8picb, %bluepicture%
		gui, add, picture, x35 y135 w100 h70 vbox8picr, %redpicture%
		Gui, Add, Picture, x155 y135 w100 h70 vbox9picb, %bluepicture%
		Gui, Add, Picture, x155 y135 w100 h70 vbox9picr, %redpicture%
		gui, add, picture, x275 y135 w100 h70 vbox10picb, %bluepicture%
		gui, add, picture, x275 y135 w100 h70 vbox10picr, %redpicture%
		gui, add, picture, x395 y135 w100 h70 vbox11picb, %bluepicture%
		gui, add, picture, x395 y135 w100 h70 vbox11picr, %redpicture%
		gui, add, picture, x515 y135 w100 h70 vbox12picb, %bluepicture%
		gui, add, picture, x515 y135 w100 h70 vbox12picr, %redpicture%
		gui, add, picture, x635 y135 w100 h70 vbox13picb, %bluepicture%
		gui, add, picture, x635 y135 w100 h70 vbox13picr, %redpicture%
		gui, add, picture, x755 y135 w100 h70 vbox14picb, %bluepicture%
		gui, add, picture, x755 y135 w100 h70 vbox14picr, %redpicture%
		gui, add, picture, x35 y225 w100 h70 vbox15picb, %bluepicture%
		gui, add, picture, x35 y225 w100 h70 vbox15picr, %redpicture%
		gui, add, picture, x155 y225 w100 h70 vbox16picb, %bluepicture%
		gui, add, picture, x155 y225 w100 h70 vbox16picr, %redpicture%
		gui, add, picture, x275 y225 w100 h70 vbox17picb, %bluepicture%
		gui, add, picture, x275 y225 w100 h70 vbox17picr, %redpicture%
		gui, add, picture, x395 y225 w100 h70 vbox18picb, %bluepicture%
		gui, add, picture, x395 y225 w100 h70 vbox18picr, %redpicture%
		gui, add, picture, x515 y225 w100 h70 vbox19picb, %bluepicture%
		gui, add, picture, x515 y225 w100 h70 vbox19picr, %redpicture%
		gui, add, picture, x635 y225 w100 h70 vbox20picb, %bluepicture%
		gui, add, picture, x635 y225 w100 h70 vbox20picr, %redpicture%
		gui, add, picture, x755 y225 w100 h70 vbox21picb, %bluepicture%
		gui, add, picture, x755 y225 w100 h70 vbox21picr, %redpicture%
		Gui, Add, Picture, x35 y315 w100 h70 vbox22picb, %bluepicture%
		Gui, Add, Picture, x35 y315 w100 h70 vbox22picr, %redpicture%
		Gui, Add, Picture, x155 y315 w100 h70 vbox23picb, %bluepicture%
		Gui, Add, Picture, x155 y315 w100 h70 vbox23picr, %redpicture%
		gui, add, picture, x275 y315 w100 h70 vbox24picb, %bluepicture%
		gui, add, picture, x275 y315 w100 h70 vbox24picr, %redpicture%
		gui, add, picture, x395 y315 w100 h70 vbox25picb, %bluepicture%
		gui, add, picture, x395 y315 w100 h70 vbox25picr, %redpicture%
		Gui, Add, Picture, x515 y315 w100 h70 vbox26picb, %bluepicture%
		Gui, Add, Picture, x515 y315 w100 h70 vbox26picr, %redpicture%
		gui, add, picture, x635 y315 w100 h70 vbox27picb, %bluepicture%
		gui, add, picture, x635 y315 w100 h70 vbox27picr, %redpicture%
		gui, add, picture, x755 y315 w100 h70 vbox28picb, %bluepicture%
		gui, add, picture, x755 y315 w100 h70 vbox28picr, %redpicture%
		gui, add, picture, x35 y405 w100 h70 vbox29picb, %bluepicture%
		gui, add, picture, x35 y405 w100 h70 vbox29picr, %redpicture%
		Gui, Add, Picture, x155 y405 w100 h70 vbox30picb, %bluepicture%
		Gui, Add, Picture, x155 y405 w100 h70 vbox30picr, %redpicture%
		gui, add, picture, x275 y405 w100 h70 vbox31picb, %bluepicture%
		gui, add, picture, x275 y405 w100 h70 vbox31picr, %redpicture%
		gui, add, picture, x395 y405 w100 h70 vbox32picb, %bluepicture%
		gui, add, picture, x395 y405 w100 h70 vbox32picr, %redpicture%
		gui, add, picture, x515 y405 w100 h70 vbox33picb, %bluepicture%
		gui, add, picture, x515 y405 w100 h70 vbox33picr, %redpicture%
		gui, add, picture, x635 y405 w100 h70 vbox34picb, %bluepicture%
		gui, add, picture, x635 y405 w100 h70 vbox34picr, %redpicture%
		gui, add, picture, x755 y405 w100 h70 vbox35picb, %bluepicture%
		gui, add, picture, x755 y405 w100 h70 vbox35picr, %redpicture%
		gui, add, picture, x35 y495 w100 h70 vbox36picb, %bluepicture%
		gui, add, picture, x35 y495 w100 h70 vbox36picr, %redpicture%
		gui, add, picture, x155 y495 w100 h70 vbox37picb, %bluepicture%
		gui, add, picture, x155 y495 w100 h70 vbox37picr, %redpicture%
		gui, add, picture, x275 y495 w100 h70 vbox38picb, %bluepicture%
		gui, add, picture, x275 y495 w100 h70 vbox38picr, %redpicture%
		gui, add, picture, x395 y495 w100 h70 vbox39picb, %bluepicture%
		gui, add, picture, x395 y495 w100 h70 vbox39picr, %redpicture%
		gui, add, picture, x515 y495 w100 h70 vbox40picb, %bluepicture%
		gui, add, picture, x515 y495 w100 h70 vbox40picr, %redpicture%
		gui, add, picture, x635 y495 w100 h70 vbox41picb, %bluepicture%
		gui, add, picture, x635 y495 w100 h70 vbox41picr, %redpicture%
		gui, add, picture, x755 y495 w100 h70 vbox42picb, %bluepicture%
		gui, add, picture, x755 y495 w100 h70 vbox42picr, %redpicture%
		gui, add, picture, x200 y590 w100 h70 vplayer1piece, %redpicture%
		gui, add, picture, x200 y590 w100 h70 vplayer2piece, %bluepicture%
	}
	if(gamenumber == 2)
	{
		gui, add, picture, vmoving1, %Xpicture% 
		gui, add, picture, vmoving2, %Opicture%
		Gui, Add, Picture, x35 y40 w230 h120 vb1x, %Xpicture% 
		Gui, Add, Picture, x35 y40 w230 h120 vb1o, %Opicture%
		Gui, Add, Picture, x285 y40 w230 h120 vb2x, %Xpicture%
		Gui, Add, Picture, x285 y40 w230 h120 vb2o, %Opicture%
		Gui, Add, Picture, x535 y40 w230 h120 vb3x, %Xpicture%
		Gui, Add, Picture, x535 y40 w230 h120 vb3o, %Opicture%
		Gui, Add, Picture, x35 y190 w230 h120 vb4x, %Xpicture%
		Gui, Add, Picture, x35 y190 w230 h120 vb4o, %Opicture%
		Gui, Add, Picture, x285 y190 w230 h120 vb5x, %Xpicture%
		Gui, Add, Picture, x285 y190 w230 h120 vb5o, %Opicture%
		Gui, Add, Picture, x535 y190 w230 h120 vb6x, %Xpicture%
		Gui, Add, Picture, x535 y190 w230 h120 vb6o, %Opicture%
		Gui, Add, Picture, x35 y345 w230 h120 vb7x, %Xpicture%
		Gui, Add, Picture, x35 y345 w230 h120 vb7o, %Opicture%
		Gui, Add, Picture, x285 y345 w230 h120 vb8x, %Xpicture%
		Gui, Add, Picture, x285 y345 w230 h120 vb8o, %Opicture%
		Gui, Add, Picture, x535 y345 w230 h120 vb9x, %Xpicture%
		Gui, Add, Picture, x535 y345 w230 h120 vb9o, %Opicture%
		gui, add, picture, x150 y530 w100 h100 v3Tp1piece, %Xpicture%
		gui, add, picture, x150 y530 w100 h100 v3Tp2piece, %Opicture%
		Gui, Add, Picture, x35 y495 w355 h160 vdrawpic1, res\3T\draw1.png
		Gui, Add, Picture, x35 y495 w355 h160 vdrawpic2, res\3T\draw2.png
		Gui, Add, Picture, x35 y495 w355 h160 vdrawpic3, res\3T\draw3.png
		Gui, Add, Picture, x35 y495 w355 h160 vdrawpic4, res\3T\draw4.png
		Gui, Add, Picture, x35 y495 w355 h160 vdrawpic5, res\3T\draw5.png
		Gui, Add, Picture, x410 y495 w355 h160 vdrawpic6, res\3T\draw1.png
		Gui, Add, Picture, x410 y495 w355 h160 vdrawpic7, res\3T\draw2.png
		Gui, Add, Picture, x410 y495 w355 h160 vdrawpic8, res\3T\draw3.png
		Gui, Add, Picture, x410 y495 w355 h160 vdrawpic9, res\3T\draw4.png
		Gui, Add, Picture, x410 y495 w355 h160 vdrawpic10, res\3T\draw5.png
		Gui, Add, Picture, x35 y495 w355 h160 vwinpic1, res\3T\win.png
		Gui, Add, Picture, x410 y495 w355 h160 vwinpic2, res\3T\win.png
		Gui, Add, Picture, x35 y495 w355 h160 vlosspic1, res\3T\loss.png
		Gui, Add, Picture, x410 y495 w355 h160 vlosspic2, res\3T\loss.png
	}
	if(gamenumber == 3)
	{
		Gui, Add, Picture, vmoving1, %pos1pic%
		Gui, Add, Picture, vmoving2, %pos2pic%
		
		Gui, Add, Picture, x38 y32 w85 h65 vp1pic1, %pos1pic%
		Gui, Add, Picture, x38 y32 w85 h65 vp2pic1, %pos2pic%
		Gui, Add, Picture, x238 y32 w85 h65 vp1pic2, %pos1pic%
		Gui, Add, Picture, x238 y32 w85 h65 vp2pic2, %pos2pic%
		Gui, Add, Picture, x438 y32 w85 h65 vp1pic3, %pos1pic%
		Gui, Add, Picture, x438 y32 w85 h65 vp2pic3, %pos2pic%
		Gui, Add, Picture, x638 y32 w85 h65 vp1pic4, %pos1pic%
		Gui, Add, Picture, x638 y32 w85 h65 vp2pic4, %pos2pic%
		
		Gui, Add, Picture, x138 y110 w85 h65 vp1pic5, %pos1pic%
		Gui, Add, Picture, x138 y110 w85 h65 vp2pic5, %pos2pic%
		Gui, Add, Picture, x338 y110 w85 h65 vp1pic6, %pos1pic%
		Gui, Add, Picture, x338 y110 w85 h65 vp2pic6, %pos2pic%
		Gui, Add, Picture, x538 y110 w85 h65 vp1pic7, %pos1pic%
		Gui, Add, Picture, x538 y110 w85 h65 vp2pic7, %pos2pic%
		Gui, Add, Picture, x738 y110 w85 h65 vp1pic8, %pos1pic%
		Gui, Add, Picture, x738 y110 w85 h65 vp2pic8, %pos2pic%
		
		Gui, Add, Picture, x38 y190 w85 h65 vp1pic9, %pos1pic%
		Gui, Add, Picture, x38 y190 w85 h65 vp2pic9, %pos2pic%
		Gui, Add, Picture, x238 y190 w85 h65 vp1pic10, %pos1pic%
		Gui, Add, Picture, x238 y190 w85 h65 vp2pic10, %pos2pic%
		Gui, Add, Picture, x438 y190 w85 h65 vp1pic11, %pos1pic%
		Gui, Add, Picture, x438 y190 w85 h65 vp2pic11, %pos2pic%
		Gui, Add, Picture, x638 y190 w85 h65 vp1pic12, %pos1pic%
		Gui, Add, Picture, x638 y190 w85 h65 vp2pic12, %pos2pic%
		;Gui, Add, Picture, x738 y190 w85 h65 vp1pic13, %pos1pic%
		;Gui, Add, Picture, x738 y190 w85 h65 vp2pic13, %pos2pic%
		
		Gui, Add, Picture, x138 y270 w85 h65 vp1pic13, %pos1pic%
		Gui, Add, Picture, x138 y270 w85 h65 vp2pic13, %pos2pic%
		Gui, Add, Picture, x338 y270 w85 h65 vp1pic14, %pos1pic%
		Gui, Add, Picture, x338 y270 w85 h65 vp2pic14, %pos2pic%
		Gui, Add, Picture, x538 y270 w85 h65 vp1pic15, %pos1pic%
		Gui, Add, Picture, x538 y270 w85 h65 vp2pic15, %pos2pic%
		Gui, Add, Picture, x738 y270 w85 h65 vp1pic16, %pos1pic%
		Gui, Add, Picture, x738 y270 w85 h65 vp2pic16, %pos2pic%
		
		Gui, Add, Picture, x38 y350 w85 h65 vp1pic17, %pos1pic%
		Gui, Add, Picture, x38 y350 w85 h65 vp2pic17, %pos2pic%	
		Gui, Add, Picture, x238 y350 w85 h65 vp1pic18, %pos1pic%
		Gui, Add, Picture, x238 y350 w85 h65 vp2pic18, %pos2pic%
		Gui, Add, Picture, x438 y350 w85 h65 vp1pic19, %pos1pic%
		Gui, Add, Picture, x438 y350 w85 h65 vp2pic19, %pos2pic%
		Gui, Add, Picture, x638 y350 w85 h65 vp1pic20, %pos1pic%
		Gui, Add, Picture, x638 y350 w85 h65 vp2pic20, %pos2pic%
		
		Gui, Add, Picture, x138 y430 w85 h65 vp1pic21, %pos1pic%
		Gui, Add, Picture, x138 y430 w85 h65 vp2pic21, %pos2pic%
		Gui, Add, Picture, x338 y430 w85 h65 vp1pic22, %pos1pic%
		Gui, Add, Picture, x338 y430 w85 h65 vp2pic22, %pos2pic%
		Gui, Add, Picture, x538 y430 w85 h65 vp1pic23, %pos1pic%
		Gui, Add, Picture, x538 y430 w85 h65 vp2pic23, %pos2pic%
		Gui, Add, Picture, x738 y430 w85 h65 vp1pic24, %pos1pic%
		Gui, Add, Picture, x738 y430 w85 h65 vp2pic24, %pos2pic%
		
		Gui, Add, Picture, x38 y510 w85 h65 vp1pic25, %pos1pic%
		Gui, Add, Picture, x38 y510 w85 h65 vp2pic25, %pos2pic%
		Gui, Add, Picture, x238 y510 w85 h65 vp1pic26, %pos1pic%
		Gui, Add, Picture, x238 y510 w85 h65 vp2pic26, %pos2pic%
		Gui, Add, Picture, x438 y510 w85 h65 vp1pic27, %pos1pic%
		Gui, Add, Picture, x438 y510 w85 h65 vp2pic27, %pos2pic%
		Gui, Add, Picture, x638 y510 w85 h65 vp1pic28, %pos1pic%
		Gui, Add, Picture, x638 y510 w85 h65 vp2pic28, %pos2pic%
		
		Gui, Add, Picture, x138 y595 w85 h65 vp1pic29, %pos1pic%
		Gui, Add, Picture, x138 y595 w85 h65 vp2pic29, %pos2pic%
		Gui, Add, Picture, x338 y595 w85 h65 vp1pic30, %pos1pic%
		Gui, Add, Picture, x338 y595 w85 h65 vp2pic30, %pos2pic%
		Gui, Add, Picture, x538 y595 w85 h65 vp1pic31, %pos1pic%
		Gui, Add, Picture, x538 y595 w85 h65 vp2pic31, %pos2pic%
		Gui, Add, Picture, x738 y595 w85 h65 vp1pic32, %pos1pic%
		Gui, Add, Picture, x738 y595 w85 h65 vp2pic32, %pos2pic%
		
		Gui, Add, Picture, vmoving1k, %pos1kpic%
		Gui, Add, Picture, vmoving2k, %pos2kpic%
		
		Gui, Add, Picture, x38 y32 w85 h65 vkp1pic1, %pos1kpic%
		Gui, Add, Picture, x38 y32 w85 h65 vkp2pic1, %pos2kpic%
		Gui, Add, Picture, x238 y32 w85 h65 vkp1pic2, %pos1kpic%
		Gui, Add, Picture, x238 y32 w85 h65 vkp2pic2, %pos2kpic%
		Gui, Add, Picture, x438 y32 w85 h65 vkp1pic3, %pos1kpic%
		Gui, Add, Picture, x438 y32 w85 h65 vkp2pic3, %pos2kpic%
		Gui, Add, Picture, x638 y32 w85 h65 vkp1pic4, %pos1kpic%
		Gui, Add, Picture, x638 y32 w85 h65 vkp2pic4, %pos2kpic%
		
		Gui, Add, Picture, x138 y110 w85 h65 vkp1pic5, %pos1kpic%
		Gui, Add, Picture, x138 y110 w85 h65 vkp2pic5, %pos2kpic%
		Gui, Add, Picture, x338 y110 w85 h65 vkp1pic6, %pos1kpic%
		Gui, Add, Picture, x338 y110 w85 h65 vkp2pic6, %pos2kpic%
		Gui, Add, Picture, x538 y110 w85 h65 vkp1pic7, %pos1kpic%
		Gui, Add, Picture, x538 y110 w85 h65 vkp2pic7, %pos2kpic%
		Gui, Add, Picture, x738 y110 w85 h65 vkp1pic8, %pos1kpic%
		Gui, Add, Picture, x738 y110 w85 h65 vkp2pic8, %pos2kpic%
		
		Gui, Add, Picture, x38 y190 w85 h65 vkp1pic9, %pos1kpic%
		Gui, Add, Picture, x38 y190 w85 h65 vkp2pic9, %pos2kpic%
		Gui, Add, Picture, x238 y190 w85 h65 vkp1pic10, %pos1kpic%
		Gui, Add, Picture, x238 y190 w85 h65 vkp2pic10, %pos2kpic%
		Gui, Add, Picture, x438 y190 w85 h65 vkp1pic11, %pos1kpic%
		Gui, Add, Picture, x438 y190 w85 h65 vkp2pic11, %pos2kpic%
		Gui, Add, Picture, x638 y190 w85 h65 vkp1pic12, %pos1kpic%
		Gui, Add, Picture, x638 y190 w85 h65 vkp2pic12, %pos2kpic%
		;Gui, Add, Picture, x738 y190 w85 h65 vkp1pic13, %pos1kpic%
		;Gui, Add, Picture, x738 y190 w85 h65 vkp2pic13, %pos2kpic%
		
		Gui, Add, Picture, x138 y270 w85 h65 vkp1pic13, %pos1kpic%
		Gui, Add, Picture, x138 y270 w85 h65 vkp2pic13, %pos2kpic%
		Gui, Add, Picture, x338 y270 w85 h65 vkp1pic14, %pos1kpic%
		Gui, Add, Picture, x338 y270 w85 h65 vkp2pic14, %pos2kpic%
		Gui, Add, Picture, x538 y270 w85 h65 vkp1pic15, %pos1kpic%
		Gui, Add, Picture, x538 y270 w85 h65 vkp2pic15, %pos2kpic%
		Gui, Add, Picture, x738 y270 w85 h65 vkp1pic16, %pos1kpic%
		Gui, Add, Picture, x738 y270 w85 h65 vkp2pic16, %pos2kpic%
		
		Gui, Add, Picture, x38 y350 w85 h65 vkp1pic17, %pos1kpic%
		Gui, Add, Picture, x38 y350 w85 h65 vkp2pic17, %pos2kpic%	
		Gui, Add, Picture, x238 y350 w85 h65 vkp1pic18, %pos1kpic%
		Gui, Add, Picture, x238 y350 w85 h65 vkp2pic18, %pos2kpic%
		Gui, Add, Picture, x438 y350 w85 h65 vkp1pic19, %pos1kpic%
		Gui, Add, Picture, x438 y350 w85 h65 vkp2pic19, %pos2kpic%
		Gui, Add, Picture, x638 y350 w85 h65 vkp1pic20, %pos1kpic%
		Gui, Add, Picture, x638 y350 w85 h65 vkp2pic20, %pos2kpic%
		
		Gui, Add, Picture, x138 y430 w85 h65 vkp1pic21, %pos1kpic%
		Gui, Add, Picture, x138 y430 w85 h65 vkp2pic21, %pos2kpic%
		Gui, Add, Picture, x338 y430 w85 h65 vkp1pic22, %pos1kpic%
		Gui, Add, Picture, x338 y430 w85 h65 vkp2pic22, %pos2kpic%
		Gui, Add, Picture, x538 y430 w85 h65 vkp1pic23, %pos1kpic%
		Gui, Add, Picture, x538 y430 w85 h65 vkp2pic23, %pos2kpic%
		Gui, Add, Picture, x738 y430 w85 h65 vkp1pic24, %pos1kpic%
		Gui, Add, Picture, x738 y430 w85 h65 vkp2pic24, %pos2kpic%
		
		Gui, Add, Picture, x38 y510 w85 h65 vkp1pic25, %pos1kpic%
		Gui, Add, Picture, x38 y510 w85 h65 vkp2pic25, %pos2kpic%
		Gui, Add, Picture, x238 y510 w85 h65 vkp1pic26, %pos1kpic%
		Gui, Add, Picture, x238 y510 w85 h65 vkp2pic26, %pos2kpic%
		Gui, Add, Picture, x438 y510 w85 h65 vkp1pic27, %pos1kpic%
		Gui, Add, Picture, x438 y510 w85 h65 vkp2pic27, %pos2kpic%
		Gui, Add, Picture, x638 y510 w85 h65 vkp1pic28, %pos1kpic%
		Gui, Add, Picture, x638 y510 w85 h65 vkp2pic28, %pos2kpic%
		
		Gui, Add, Picture, x138 y595 w85 h65 vkp1pic29, %pos1kpic%
		Gui, Add, Picture, x138 y595 w85 h65 vkp2pic29, %pos2kpic%
		Gui, Add, Picture, x338 y595 w85 h65 vkp1pic30, %pos1kpic%
		Gui, Add, Picture, x338 y595 w85 h65 vkp2pic30, %pos2kpic%
		Gui, Add, Picture, x538 y595 w85 h65 vkp1pic31, %pos1kpic%
		Gui, Add, Picture, x538 y595 w85 h65 vkp2pic31, %pos2kpic%
		Gui, Add, Picture, x738 y595 w85 h65 vkp1pic32, %pos1kpic%
		Gui, Add, Picture, x738 y595 w85 h65 vkp2pic32, %pos2kpic%
		
		Gui, Add, Picture, x960 y265 w80 h70 vPlyrPiece1, %pos1pic%
		Gui, Add, Picture, x960 y585 w80 h70 vPlyrPiece2, %pos2pic%
		
	}
	if(gamenumber == 4)
	{
		Gui, Add, Picture, x32 y40 w190 h270 vpic1p1war, %warpic%
		Gui, Add, Picture, x222 y40 w190 h270 vpic2p1war, %warpic%
		Gui, Add, Picture, x412 y40 w190 h270 vpic3p1war, %warpic%
		Gui, Add, Picture, x602 y40 w190 h270 vpic4p1war, %warpic%
		
		Gui, Add, Picture, x32 y340 w190 h270 vpic1p2war, %warpic%
		Gui, Add, Picture, x222 y340 w190 h270 vpic2p2war, %warpic%
		Gui, Add, Picture, x412 y340 w190 h270 vpic3p2war, %warpic%
		Gui, Add, Picture, x602 y340 w190 h270 vpic4p2war, %warpic%
	}
	
	hideallGamePieces(gamenumber)
	return
}
hideallGamePieces(gamenumber)
{
	if(gamenumber == 1)
	{
		hideC4Pictures()
	}
	if(gamenumber == 2)
	{
		hide3TPics()
	}
	if(gamenumber == 3)
	{
		hidePicsCheckers()
		hidePlayerPieces()
	}
	if(gamenumber == 4)
	{
		hideWarPics()
	}
}
createallButtons(gamenumber)
{
	if(gamenumber == 1)
	{
		gui, font, s14 bold cblack
		gui, add, button, x25 y640 w200 h30 gRePlayButton vreply, Re-Play
		gui, add, button, x345 y640 w200 h30 gMenuButton vSett, Main Menu
		gui, add, button, x665 y640 w200 h30 gExitButton vExt, Exit
		gui, font
	}
	if(gamenumber == 2)
	{
		gui, font, s14 cblack bold
		gui, add, button, x60 y650 w180 h25 gRePlayButton vReplyy, Re-Play
		gui, add, button, x310 y650 w180 h25 vSet gMenuButton, Main Menu
		gui, add, button, x560 y650 w180 h25 vExtt gExitButton, Exit
		gui, font
	}
	if(gamenumber == 3)
	{
		gui, font, s14 cblack bold
		gui, add, button, x35 y680 w200 h25 vCreply gReplayButton, Re-Play
		gui, add, button, x985 y680 w200 h25 vexitt gExitButton, Exit
		gui, add, button, x510 y680 w200 h25 vMmenu gMenuButton, Main Menu
		gui, font
	}
	if(gamenumber == 4)
	{
		
	}
	
	hideallButtons(gamenumber)
	return
}
hideallButtons(gamenumber)
{
	if(gamenumber == 1)
	{
		hideC4Buttons()
	}
	if(gamenumber == 2)
	{
		hide3TButtons()
	}
	if(gamenumber == 3)
	{
		hideCheckersButtons()
	}
	if(gamenumber == 4)
	{
		hideWarButtons()
	}
}
createallGameBoards(gamenumber)
{
	if(gamenumber == 1)
	{
		plyr := " "
		gui, font, s14 bold cblack 
		gui, add, groupbox, x25 y575 w840 h105 vGameInfo, Game Info : 
		gui, font
		gui, font, s16 bold
		gui, add, text, x265 y1 w400 h25 vGameName, C4    -----    Connect 4    -----    C4
		gui, font, s20 bold cwhite
		gui, add, groupbox, x25 y25 w120 h100 vbx1, ; box1
		gui, add, groupbox, x145 y25 w120 h100 vbx2, ; box2
		gui, add, groupbox, x265 y25 w120 h100 vbx3, ; box3
		gui, add, groupbox, x385 y25 w120 h100 vbx4, ;box4
		gui, add, groupbox, x505 y25 w120 h100 vbx5, ;box5
		gui, add, groupbox, x625 y25 w120 h100 vbx6, ;box6
		gui, add, groupbox, x745 y25 w120 h100 vbx7, ; box7
		gui, add, groupbox, x25 y115 w120 h100 vbx8, ; box8
		gui, add, groupbox, x145 y115 w120 h100 vbx9, ;box9
		gui, add, groupbox, x265 y115 w120 h100 vbx10, ; box10
		gui, add, groupbox, x385 y115 w120 h100 vbx11, ; box11
		gui, add, groupbox, x505 y115 w120 h100 vbx12, ; box12
		gui, add, groupbox, x625 y115 w120 h100 vbx13, ; box13
		gui, add, groupbox, x745 y115 w120 h100 vbx14, ;box14
		gui, add, groupbox, x25 y205 w120 h100 vbx15, ;box15
		gui, add, groupbox, x145 y205 w120 h100 vbx16, ; box16
		gui, add, groupbox, x265 y205 w120 h100 vbx17, ; box17
		gui, add, groupbox, x385 y205 w120 h100 vbx18, ;box18
		gui, add, groupbox, x505 y205 w120 h100 vbx19, ;box19
		gui, add, groupbox, x625 y205 w120 h100 vbx20, ;;box20
		gui, add, groupbox, x745 y205 w120 h100 vbx21, ; box21
		gui, add, groupbox, x25 y295 w120 h100 vbx22, ;box22
		gui, add, groupbox, x145 y295 w120 h100 vbx23, ; box23
		gui, add, groupbox, x265 y295 w120 h100 vbx24, ;box24
		gui, add, groupbox, x385 y295 w120 h100 vbx25, ;box25
		gui, add, groupbox, x505 y295 w120 h100 vbx26, ;box26
		gui, add, groupbox, x625 y295 w120 h100 vbx27, ;box27
		gui, add, groupbox, x745 y295 w120 h100 vbx28, ; box28
		gui, add, groupbox, x25 y385 w120 h100 vbx29, ;box29
		gui, add, groupbox, x145 y385 w120 h100 vbx30, ;box30
		gui, add, groupbox, x265 y385 w120 h100 vbx31, ;box31
		gui, add, groupbox, x385 y385 w120 h100 vbx32, ;box32
		gui, add, groupbox, x505 y385 w120 h100 vbx33, ;box33
		gui, add, groupbox, x625 y385 w120 h100 vbx34, ;box34
		gui, add, groupbox, x745 y385 w120 h100 vbx35, ;box35
		gui, add, groupbox, x25 y475 w120 h100 vbx36, ;box36
		gui, add, groupbox, x145 y475 w120 h100 vbx37, ;box37
		gui, add, groupbox, x265 y475 w120 h100 vbx38, ;box38
		gui, add, groupbox, x385 y475 w120 h100 vbx39, ;box39
		gui, add, groupbox, x505 y475 w120 h100 vbx40, ;box40
		gui, add, groupbox, x625 y475 w120 h100 vbx41, ;box41
		gui, add, groupbox, x745 y475 w120 h100 vbx42, 
		gui, font, s20 cblack bold italic
		gui, add, text, x315 y615 w300 h40 vEndTxt, %plyr% Wins Game
		gui, font
		gui, font, s16 bold
		gui, add, text, x350 y620 w250 h30 vPlyr1Turn, %plyr1name%'s Turn
		gui, add, text, x350 y620 w250 h30 vPlyr2Turn, %plyr2name%'s Turn
		gui, font
	}
	if(gamenumber == 2)
	{
		gui, font, cblack bold 
		Gui, Add, GroupBox, x25 y25 w250 h145 vboardbox1,     ; ---------- box 1
		Gui, Add, GroupBox, x275 y25 w250 h145 vboardbox2,    ; ---------- box 2
		Gui, Add, GroupBox, x525 y25 w250 h145 vboardbox3,    ; ---------- box 3
		Gui, Add, GroupBox, x25 y175 w250 h145 vboardbox4,    ; ---------- box 4
		Gui, Add, GroupBox, x275 y175 w250 h145 vboardbox5,   ; ---------- box 5
		Gui, Add, GroupBox, x525 y175 w250 h145 vboardbox6,   ; ---------- box 6
		Gui, Add, GroupBox, x25 y325 w250 h145 vboardbox7,    ; ---------- box 7
		Gui, Add, GroupBox, x275 y325 w250 h145 vboardbox8,   ; ---------- box 8
		Gui, Add, GroupBox, x525 y325 w250 h145 vboardbox9,   ; ---------- box 9
		gui, font
		gui, font, cblack bold
		gui, add, groupbox, x25 y475 w750 h200 vGameInfoBorder, Game Info :
		gui, font
		gui, font, cblack bold
		Gui, Add, GroupBox, x25 y475 w375 h200 vPl1Stats, %Plyr1Name%'s Game Stats :
		Gui, Add, GroupBox, x400 y475 w375 h200 vPl2Stats, %Plyr2Name%'s Game Stats :
		gui, font
		gui, font, s16 bold
		gui, add, text, x315 y570 w180 h40 vanp1, %Plyr1Name%'s Turn
		gui, add, text, x315 y570 w180 h40 vanp2, %Plyr2Name%'s Turn
		gui, font
		gui, font, s22 bold
		gui, add, text, x150 y550 w200 h50 vGameTxt, GAME
		gui, add, text, x550 y550 w200 h50 vOverTxt, OVER
		gui, font
	}
	if(gamenumber == 3)
	{
		gui, font, cblack bold
		gui, add, groupbox, x32 y20 w800 h647 vcbxmain,
		Gui, Add, GroupBox, x32 y20 w100 h85 vcbx1, 1
		Gui, Add, GroupBox, x232 y20 w100 h85 vcbx2, 2
		Gui, Add, GroupBox, x432 y20 w100 h85 vcbx3, 3
		Gui, Add, GroupBox, x632 y20 w100 h85 vcbx4, 4
		
		Gui, Add, GroupBox, x132 y97 w100 h85 vcbx5, 5
		Gui, Add, GroupBox, x332 y97 w100 h85 vcbx6, 6
		Gui, Add, GroupBox, x532 y97 w100 h85 vcbx7, 7
		Gui, Add, GroupBox, x732 y97 w100 h85 vcbx8, 8
		
		Gui, Add, GroupBox, x32 y177 w100 h85 vcbx9, 9
		Gui, Add, GroupBox, x232 y177 w100 h85 vcbx10, 10
		Gui, Add, GroupBox, x432 y177 w100 h85 vcbx11, 11
		Gui, Add, GroupBox, x632 y177 w100 h85 vcbx12, 12
		
		Gui, Add, GroupBox, x132 y257 w100 h85 vcbx13, 13
		Gui, Add, GroupBox, x332 y257 w100 h85 vcbx14, 14
		Gui, Add, GroupBox, x532 y257 w100 h85 vcbx15, 15
		Gui, Add, GroupBox, x732 y257 w100 h85 vcbx16, 16
		
		Gui, Add, GroupBox, x32 y337 w100 h85 vcbx17, 17
		Gui, Add, GroupBox, x232 y337 w100 h85 vcbx18, 18
		Gui, Add, GroupBox, x432 y337 w100 h85 vcbx19, 19
		Gui, Add, GroupBox, x632 y337 w100 h85 vcbx20, 20
		
		Gui, Add, GroupBox, x132 y417 w100 h85 vcbx21, 21
		Gui, Add, GroupBox, x332 y417 w100 h85 vcbx22, 22
		Gui, Add, GroupBox, x532 y417 w100 h85 vcbx23, 23
		Gui, Add, GroupBox, x732 y417 w100 h85 vcbx24, 24
		
		Gui, Add, GroupBox, x32 y497 w100 h85 vcbx25, 25
		Gui, Add, GroupBox, x232 y497 w100 h85 vcbx26, 26
		Gui, Add, GroupBox, x432 y497 w100 h85 vcbx27, 27
		Gui, Add, GroupBox, x632 y497 w100 h85 vcbx28, 28
		
		Gui, Add, GroupBox, x132 y577 w100 h90 vcbx29, 29
		Gui, Add, GroupBox, x332 y577 w100 h90 vcbx30, 30
		Gui, Add, GroupBox, x532 y577 w100 h90 vcbx31, 31
		Gui, Add, GroupBox, x732 y577 w100 h90 vcbx32, 32
		
		positionborder1txt := Plyr1Name "'s Game Stats "
		positionborder2txt := Plyr2Name "'s Game Stats "
		positionborder3txt := Plyr3Name "'s Game Stats "
		
		Gui, Add, GroupBox, x832 y20 w350 h325 center vPositionBorder1, %positionborder1txt%
		Gui, Add, GroupBox, x832 y345 w350 h325 center vPositionBorder2, %positionborder2txt%
		Gui, Add, GroupBox, x832 y345 w350 h325 center vPositionBorder3, %positionborder3txt%
		
		position1turntxt := Plyr1Name "'s Turn "
		position2turntxt := Plyr2Name "'s Turn "
		position3turntxt := Plyr3Name "'s Turn "
		
		gui, font, cblue s14 bold
		Gui, Add, Text, x875 y200 w280 h50 vPosition1Turn center, %position1turntxt%
		gui, font, cred s14 bold
		Gui, Add, Text, x875 y530 w280 h50 vPosition2Turn center, %position2turntxt%
		Gui, Add, Text, x875 y530 w280 h50 vPosition3Turn center, %position3turntxt%
		gui, font
		
		gui, font, cblack bold
		gui, add, text, x875 y55 w250 h20 vp1remaining center, Game Pieces Remaining 
		gui, add, text, x1125 y55 w50 h20 vp1remainingtxt center, 12
		gui, add, text, x875 y380 w250 h20 vp2remaining center, Game Pieces Remaining 
		gui, add, text, x1125 y380 w50 h20 vp2remainingtxt center, 12
		
		gui, add, text, x875 y110 w250 h20 vp1score center, Score 
		gui, add, text, x1125 y110 w50 h20 vp1scoretxt center, 1000
		gui, add, text, x875 y440 w250 h20 vp2score center, Score 
		gui, add, text, x1125 y440 w50 h20 vp2scoretxt center, 1000
		gui, font
	}
	if(gamenumber == 4)
	{
		playerbordertxt1 := Plyr1Name "'s Game Info "
		playerbordertxt2 := Plyr2Name "'s Game Info "
		;playerbordertxt3 := Plyr3Name "'s Game Info "
		
		gui, font, cblack bold
		Gui, Add, GroupBox, x22 y20 w1100 h300 right vWarPlyrBorder1, %playerbordertxt1%
		Gui, Add, GroupBox, x22 y320 w1100 h300 right vWarPlyrBorder2, %playerbordertxt2%
		;Gui, Add, GroupBox, x22 y320 w1100 h300 right vWarPlyrBorder3, %playerbordertxt3%
		gui, font
		
		warp1turntxt := Plyr1Name " 's Turn"
		warp2turntxt := Plyr2Name " 's Turn"
		;warp3turntxt := Plyr3Name " 's Turn"
		
		gui, font,bold cred s12
		gui, add, text, x915 y240 w200 h30 vWarPl1Turn center, %warp1turntxt%
		gui, add, text, x915 y540 w200 h30 vWarPl2Turn center, %warp2turntxt%
		;gui, add, text, x915 y540 w200 h30 vWarPl3Turn center, %warp3turntxt%
		gui, font
		
		pos1lefttxt := " "
		pos2lefttxt := " "
		
		gui, add, text, x915 y60 w120 h20 vpos1cardsleft, %pos1lefttxt%        
		gui, add, text, x915 y360 w120 h20 vpos2cardsleft, %pos2lefttxt%
		
		gui, add, text, x1050 y60 w50 h20 vpos1totalcards, %pos1totalcardstxt%        
		gui, add, text, x1050 y360 w50 h20 vpos2totalcards, %pos2totalcardstxt%
	}
	
	hideallGameBoards(gamenumber)
	
	return
}
hideallGameBoards(gamenumber)
{
	if(gamenumber == 1)
	{
		hideC4GameBoard()
	}
	if(gamenumber == 2)
	{
		hide3TGameBoard()
	}
	if(gamenumber == 3)
	{
		hideCheckersGameBoard()
	}
	if(gamenumber == 4)
	{
		hideWarBoard()
	}
}
createallStats(gamenumber)
{
	gui, font, cblack bold
	Gui, Add, GroupBox, x22 y20 w440 h260 vp1stats,
	Gui, Add, GroupBox, x22 y290 w440 h280 vp2stats,
	if(gamenumber == 1)
	{
		Gui, Add, Text, x52 y60 w190 h20 vp1tgptxt, Games Played
		Gui, Add, Text, x52 y140 w190 h20 vp1gwtxt, Games Won
		Gui, Add, Text, x52 y220 w190 h20 vp1gltxt, Games Lost
		Gui, Add, Text, x52 y330 w190 h20 vp2tgptxt, Games Played
		Gui, Add, Text, x52 y410 w190 h20 vp2gwtxt, Games Won
		Gui, Add, Text, x52 y500 w190 h20 vp2gltxt, Games Lost
		Gui, Add, Text, x322 y60 w50 h20 vp1tgp,
		Gui, Add, Text, x322 y140 w50 h20 vp1gw,
		Gui, Add, Text, x322 y220 w50 h20 vp1gl,
		Gui, Add, Text, x322 y330 w50 h20 vp2tgp,
		Gui, Add, Text, x322 y410 w50 h20 vp2gw,
		Gui, Add, Text, x322 y500 w50 h20 vp2gl,
	}
	else if(gamenumber == 2)
	{
		Gui, Add, Text, x55 y55 w190 h20 v3TTGPp1txt, Games Played
		Gui, Add, Text, x55 y110 w190 h20 v3TTGWp1txt, Games Won
		Gui, Add, Text, x55 y170 w190 h20 v3TTGLp1txt, Games Lost
		Gui, Add, Text, x55 y230 w190 h20 v3TTDGp1txt, Draw Games
		Gui, Add, Text, x55 y325 w190 h20 v3TTGPp2txt, Games Played
		Gui, Add, Text, x55 y390 w190 h20 v3TTGWp2txt, Games Won
		Gui, Add, Text, x55 y450 w190 h20 v3TTGLp2txt, Games Lost
		Gui, Add, Text, x55 y510 w190 h20 v3TTDGp2txt, Draw Games
		Gui, Add, Text, x315 y55 w50 h20 v3TTGPp1,
		Gui, Add, Text, x315 y110 w50 h20 v3TTGWp1,
		Gui, Add, Text, x315 y170 w50 h20 v3TTGLp1,
		Gui, Add, Text, x315 y230 w50 h20 v3TTDGp1,
		Gui, Add, Text, x315 y325 w50 h20 v3TTGPp2,
		Gui, Add, Text, x315 y390 w50 h20 v3TTGWp2,
		Gui, Add, Text, x315 y450 w50 h20 v3TTGLp2,
		Gui, Add, Text, x315 y510 w50 h20 v3TTDGp2,
	}
	else if(gamenumber == 3)
	{
		Gui, Add, Text, x52 y60 w190 h20 vCTGPp1txt, Games Played
		Gui, Add, Text, x52 y140 w190 h20 vCTGWp1txt, Games Won
		Gui, Add, Text, x52 y220 w190 h20 vCTGLp1txt, Games Lost
		
		Gui, Add, Text, x52 y330 w190 h20 vCTGPp2txt, Games Played
		Gui, Add, Text, x52 y410 w190 h20 vCTGWp2txt, Games Won
		Gui, Add, Text, x52 y500 w190 h20 vCTGLp2txt, Games Lost
		
		Gui, Add, Text, x322 y60 w50 h20 vCTGPp1,
		Gui, Add, Text, x322 y140 w50 h20 vCTGWp1,
		Gui, Add, Text, x322 y220 w50 h20 vCTGLp1,
		
		Gui, Add, Text, x322 y330 w50 h20 vCTGPp2,
		Gui, Add, Text, x322 y410 w50 h20 vCTGWp2,
		Gui, Add, Text, x322 y500 w50 h20 vCTGLp2,
	}
	else if(gamenumber == 4)
	{
		Gui, Add, Text, x52 y60 w190 h20 vWarTGPp1txt, Games Played
		Gui, Add, Text, x52 y140 w190 h20 vWarTGWp1txt, Games Won
		Gui, Add, Text, x52 y220 w190 h20 vWarTGLp1txt, Games Lost
		
		Gui, Add, Text, x52 y330 w190 h20 vWarTGPp2txt, Games Played
		Gui, Add, Text, x52 y410 w190 h20 vWarTGWp2txt, Games Won
		Gui, Add, Text, x52 y500 w190 h20 vWarTGLp2txt, Games Lost
		
		Gui, Add, Text, x322 y60 w50 h20 vWarTGPp1,
		Gui, Add, Text, x322 y140 w50 h20 vWarTGWp1,
		Gui, Add, Text, x322 y220 w50 h20 vWarTGLp1,
		
		Gui, Add, Text, x322 y330 w50 h20 vWarTGPp2,
		Gui, Add, Text, x322 y410 w50 h20 vWarTGWp2,
		Gui, Add, Text, x322 y500 w50 h20 vWarTGLp2,
	}
	
	gui, font
	hideallStats(gamenumber)
	return
}
hideallStats(gamenumber)
{
	guicontrol, hide, p1stats
	guicontrol, hide, p2stats
	
	if(gamenumber == 1)
	{
		guicontrol, hide, p1tgptxt
		guicontrol, hide, p1tgp
		guicontrol, hide, p1gwtxt
		guicontrol, hide, p1gw
		guicontrol, hide, p1gltxt
		guicontrol, hide, p1gl
		guicontrol, hide, p2tgptxt
		guicontrol, hide, p2tgp
		guicontrol, hide, p2gwtxt
		guicontrol, hide, p2gw
		guicontrol, hide, p2gltxt
		guicontrol, hide, p2gl
	}
	else if(gamenumber == 2)
	{
		hide3Tstats()
	}
	else if(gamenumber == 3)
	{
		hideStatsCheckers()
	}
	else if(gamenumber == 4)
	{
		guicontrol, hide, WarTGPp1txt
		guicontrol, hide, WarTGWp1txt
		guicontrol, hide, WarTGLp1txt
		guicontrol, hide, WarTGPp1
		guicontrol, hide, WarTGWp1
		guicontrol, hide, WarTGLp1
		
		guicontrol, hide, WarTGPp2txt
		guicontrol, hide, WarTGWp2txt
		guicontrol, hide, WarTGLp2txt
		guicontrol, hide, WarTGPp2
		guicontrol, hide, WarTGWp2
		guicontrol, hide, WarTGLp2
	}
	
	return
}
