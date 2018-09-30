;AHK
;Copyright@2016 - 2018  Naythan Morey
;Email - Naythan.Morey@yahoo.com

#include includes\GameButtons.ahk
#include includes\GameReset.ahk

; -------------------------------- C4   --------------------------------------------------- COMPLETE ------------   EX P2

setupgamepieces()
{
	z := 1
	loop 42
	{
		box%z%.Owner := 0
		box%z%.Status := "I"
		if(z == 1) || (z == 8) || (z == 15) || (z == 22) || (z == 29) || (z == 36)
		{
			box%z%.Column := 1
		}
		else if(z == 2) || (z == 9) || (z == 16) || (z == 23) || (z == 30) || (z == 37)
		{
			box%z%.Column := 2
		}
		else if(z == 3) || (z == 10) || (z == 17) || (z == 24) || (z == 31) || (z == 38)
		{
			box%z%.Column := 3
		}
		else if(z == 4) || (z == 11) || (z == 18) || (z == 25) || (z == 32) || (z == 39)
		{
			box%z%.Column := 4
		}
		else if(z == 5) || (z == 12) || (z == 19) || (z == 26) || (z == 33) || (z == 40)
		{
			box%z%.Column := 5
		}
		else if(z == 6) || (z == 13) || (z == 20) || (z == 27) || (z == 34) || (z == 41)
		{
			box%z%.Column := 6
		}
		else if(z == 7) || (z == 14) || (z == 21) || (z == 28) || (z == 35) || (z == 42)
		{
			box%z%.Column := 7
		}
		
		
		if(z == 1) || (z == 2) || (z == 3) || (z == 4) || (z == 5) || (z == 6) || (z == 7)
		{
			box%z%.Row := 1
		}
		if(z == 8) || (z == 9) || (z == 10) || (z == 11) || (z == 12) || (z == 13) || (z == 14)
		{
			box%z%.Row := 2
		}
		if(z == 15) || (z == 16) || (z == 17) || (z == 18) || (z == 19) || (z == 20) || (z ==21)
		{
			box%z%.Row := 3
		}
		if(z == 22) || (z == 23) || (z == 24) || (z == 25) || (z == 26) || (z == 27) || (z == 28)
		{
			box%z%.Row := 4
		}
		if(z == 29) || (z == 30) || (z == 31) || (z == 32) || (z == 33) || (z == 34) || (z == 35)
		{
			box%z%.Row := 5
		}
		if(z ==36) || (z == 37) || (z == 38) || (z == 39) || (z == 40) || (z == 41) || (z == 42)
		{
			box%z%.Row := 6
		}
		
		z++
	}
	
	return
}
checkpiece()
{
	loop 42
	{
		msgbox,,, % "own (" . box%a_index%.Owner ") Stat(" . box%a_index%.Status ") column(" . box%a_index%.Column ") row(" . box%a_index%.Row ")"
	}
}
showC4Stats()
{
	p1statstxt := Plyr1Name "'s Game Stats "
	p2statstxt := Plyr2Name "'s Game Stats "
	
	guicontrol, hide, p1stats
	guicontrol,, p1stats, %p1statstxt%
	guicontrol, show, p1stats
	
	guicontrol, hide, p2stats
	guicontrol,, p2stats, %p2statstxt%
	guicontrol, show, p2stats
	
	guicontrol, show, p1tgptxt
	guicontrol, show, p1gwtxt
	guicontrol, show, p1gltxt
	guicontrol, show, p2tgptxt
	guicontrol, show, p2gwtxt
	guicontrol, show, p2gltxt
	
	guicontrol, hide, p1tgp
	guicontrol,, p1tgp, %C4TGamesp1%
	guicontrol, show, p1tgp
	
	guicontrol, hide, p1gw
	guicontrol,, p1gw, %C4WGamesp1%
	guicontrol, show, p1gw
	
	guicontrol, hide, p1gl
	guicontrol,, p1gl, %C4LGamesp1%
	guicontrol, show, p1gl
	
	guicontrol, hide, p2tgp
	guicontrol,, p2tgp, %C4TGamesp2%
	guicontrol, show, p2tgp
	
	guicontrol, hide, p2gw
	guicontrol,, p2gw, %C4WGamesp2%
	guicontrol, show, p2gw
	
	guicontrol, hide, p2gl
	guicontrol,, p2gl, %C4LGamesp2%
	guicontrol, show, p2gl
	
	Gui, Show, x467 y123 h596 w484 center, Connect 4 Circles V_%C4version% Game Stats
	
	return
}
randomnumber()
{
	rn := 
	
	random, rn, 1, 42
	
	return rn
}
showC4GameBoard()
{
	guicontrol, show, bx1
	guicontrol, show, bx2
	guicontrol, show, bx3
	guicontrol, show, bx4
	guicontrol, show, bx5
	guicontrol, show, bx6
	guicontrol, show, bx7
	guicontrol, show, bx8
	guicontrol, show, bx9
	guicontrol, show, bx10
	guicontrol, show, bx11
	guicontrol, show, bx12
	guicontrol, show, bx13
	guicontrol, show, bx14
	guicontrol, show, bx15
	guicontrol, show, bx16
	guicontrol, show, bx17
	guicontrol, show, bx18
	guicontrol, show, bx19
	guicontrol, show, bx20
	guicontrol, show, bx21
	guicontrol, show, bx22
	guicontrol, show, bx23
	guicontrol, show, bx24
	guicontrol, show, bx25
	guicontrol, show, bx26
	guicontrol, show, bx27
	guicontrol, show, bx28
	guicontrol, show, bx29
	guicontrol, show, bx30
	guicontrol, show, bx31
	guicontrol, show, bx32
	guicontrol, show, bx33
	guicontrol, show, bx34
	guicontrol, show, bx35
	guicontrol, show, bx36
	guicontrol, show, bx37
	guicontrol, show, bx38
	guicontrol, show, bx39
	guicontrol, show, bx40
	guicontrol, show, bx41
	guicontrol, show, bx42
		
	guicontrol, show, GameInfo
	guicontrol, show, GameName
	
	if(PlayerNumber == 1)
		guicontrol, show, player1piece
	else
		guicontrol, show, player2piece
	
	return
}
showC4Pictures()
{
	gh := 1
	
	loop 42
	{
		if(box%gh%.Owner == 1)
			guicontrol, show, box%gh%picr
		else if(box%gh%.Owner == 2)
			guicontrol, show, box%gh%picb
		gh++
	}
	
	return
}

CheckBoxStatus(boxin)
{
	return box%boxin%.Status
}
CheckGameC4(pin)
{
	pi := 0
		; -------------------------------------------------------------------------------   row 1 down
	
	if(pin == 1)
	{
		if(box1.Owner == 1) && (box8.Owner == 1) && (box15.Owner == 1) && (box22.Owner == 1)
		{
			pi := 1
			return pi
		}
		if(box8.Owner == 1) && (box15.Owner == 1) && (box22.Owner == 1) && (box29.Owner == 1)
		{
			pi := 1
			return pi
		}
		if(box15.Owner == 1) && (box22.Owner == 1) && (box29.Owner == 1) && (box36.Owner == 1)
		{
			pi := 1
			return pi
		}
		; -------------------------------------------------------------------------------   row 2 down
		
		if(box2.Owner == 1) && (box9.Owner == 1) && (box16.Owner == 1) && (box23.Owner == 1)
		{
			pi := 1
			return pi
		}
		if(box9.Owner == 1) && (box16.Owner == 1) && (box23.Owner == 1) && (box30.Owner == 1)
		{
			pi := 1
			return pi
		}
		if(box16.Owner == 1) && (box23.Owner == 1) && (box30.Owner == 1) && (box37.Owner == 1)
		{
			pi := 1
			return pi
		}
		; -------------------------------------------------------------------------------   row 3 down
		
		if(box3.Owner == 1) && (box10.Owner == 1) && (box17.Owner == 1) && (box24.Owner == 1)
		{
			pi := 1
			return pi
		}
		if(box10.Owner == 1) && (box17.Owner == 1) && (box24.Owner == 1) && (box31.Owner == 1)
		{
			pi := 1
			return pi
		}
		if(box17.Owner == 1) && (box24.Owner == 1) && (box31.Owner == 1) && (box38.Owner == 1)
		{
			pi := 1
			return pi
		}
		; -------------------------------------------------------------------------------   row 4 down
		
		if(box4.Owner == 1) && (box11.Owner == 1) && (box18.Owner == 1) && (box25.Owner == 1) 
		{
			pi := 1
			return pi
		}
		if(box11.Owner == 1) && (box18.Owner == 1) && (box25.Owner == 1) && (box32.Owner == 1)
		{
			pi := 1
			return pi
		}
		if(box18.Owner == 1) && (box25.Owner == 1) && (box32.Owner == 1) && (box39.Owner == 1)
		{
			pi := 1
			return pi
		}
		; -------------------------------------------------------------------------------   row 5 down
		
		if(box5.Owner == 1) && (box12.Owner == 1) && (box19.Owner == 1) && (box26.Owner == 1) 
		{
			pi := 1
			return pi
		}
		if(box12.Owner == 1) && (box19.Owner == 1) && (box26.Owner == 1) && (box33.Owner == 1)
		{
			pi := 1
			return pi
		}
		if(box19.Owner == 1) && (box26.Owner == 1) && (box33.Owner == 1) && (box40.Owner == 1)
		{
			pi := 1
			return pi
		}
		; -------------------------------------------------------------------------------   row 6 down
		
		if(box6.Owner == 1) && (box13.Owner == 1) && (box20.Owner == 1) && (box27.Owner == 1) 
		{
			pi := 1
			return pi
		}
		if(box13.Owner == 1) && (box20.Owner == 1) && (box27.Owner == 1) && (box34.Owner == 1)
		{
			pi := 1
			return pi
		}
		if(box20.Owner == 1) && (box27.Owner == 1) && (box34.Owner == 1) && (box41.Owner == 1)
		{
			pi := 1
			return pi
		}
		; -------------------------------------------------------------------------------   row 7 down
		
		if(box7.Owner == 1) && (box14.Owner == 1) && (box21.Owner == 1) && (box28.Owner == 1) 
		{
			pi := 1
			return pi
		}
		if(box14.Owner == 1) && (box21.Owner == 1) && (box28.Owner == 1) && (box35.Owner == 1)
		{
			pi := 1
			return pi
		}
		if(box22.Owner == 1) && (box28.Owner == 1) && (box35.Owner == 1) && (box42.Owner == 1)
		{
			pi := 1
			return pi
		}
		
		; -------------------------------------------------------------------------------   row 1 across 
		
		if(box1.Owner == 1) && (box2.Owner == 1) && (box3.Owner == 1) && (box4.Owner == 1)
		{
			pi := 1
			return pi
		} 
		if(box2.Owner == 1) && (box3.Owner == 1) && (box4.Owner == 1) && (box5.Owner == 1)
		{
			pi := 1
			return pi
		}
		if(box3.Owner == 1) && (box4.Owner == 1) &&  (box5.Owner == 1) && (box6.Owner == 1)
		{
			pi := 1
			return pi
		} 
		if(box4.Owner == 1) && (box5.Owner == 1) && (box6.Owner == 1) &&  (box7.Owner == 1)
		{
			pi := 1
			return pi
		}
		; -------------------------------------------------------------------------------   row 2 across
 
		if(box8.Owner == 1) && (box9.Owner == 1) && (box10.Owner == 1) && (box11.Owner == 1)
		{
			pi := 1
			return pi
		} 
		if(box9.Owner == 1) && (box10.Owner == 1) && (box11.Owner == 1) && (box12.Owner == 1)
		{
			pi := 1
			return pi
		}
		if(box10.Owner == 1) && (box11.Owner == 1) &&  (box12.Owner == 1) && (box13.Owner == 1)
		{
			pi := 1
			return pi
		} 
		if(box11.Owner == 1) && (box12.Owner == 1) && (box13.Owner == 1) &&  (box14.Owner == 1)
		{
			pi := 1
			return pi
		}
		; -------------------------------------------------------------------------------   row 3 across
 
		if(box15.Owner == 1) && (box16.Owner == 1) && (box17.Owner == 1) && (box18.Owner == 1)
		{
			pi := 1
			return pi
		}
		if(box16.Owner == 1) && (box17.Owner == 1) && (box18.Owner == 1) && (box19.Owner == 1)
		{
			pi := 1
			return pi
		}
		if(box17.Owner == 1) && (box18.Owner == 1) &&  (box19.Owner == 1) && (box20.Owner == 1)
		{
			pi := 1
			return pi
		}
		if(box18.Owner == 1) && (box19.Owner == 1) && (box20.Owner == 1) &&  (box21.Owner == 1)
		{
			pi := 1
			return pi
		}
		; -------------------------------------------------------------------------------   row 4 across 
		
		if(box22.Owner == 1) && (box23.Owner == 1) && (box24.Owner == 1) && (box25.Owner == 1) 
		{
			pi := 1
			return pi
		}
		if(box23.Owner == 1) && (box24.Owner == 1) && (box25.Owner == 1) && (box26.Owner == 1)
		{
			pi := 1
			return pi
		}
		if(box24.Owner == 1) && (box25.Owner == 1) &&  (box26.Owner == 1) && (box27.Owner == 1) 
		{
			pi := 1
			return pi
		}
		if(box25.Owner == 1) && (box26.Owner == 1) && (box27.Owner == 1) &&  (box28.Owner == 1)
		{
			pi := 1
			return pi
		}
		; -------------------------------------------------------------------------------   row 5 across 
		
		if(box29.Owner == 1) && (box30.Owner == 1) && (box31.Owner == 1) && (box32.Owner == 1)
		{
			pi := 1
			return pi
		}
		if(box30.Owner == 1) && (box31.Owner == 1) && (box32.Owner == 1) && (box33.Owner == 1)
		{
			pi := 1
			return pi
		}
		if(box31.Owner == 1) && (box32.Owner == 1) &&  (box33.Owner == 1) && (box34.Owner == 1)
		{
			pi := 1
			return pi
		}
		if(box32.Owner == 1) && (box33.Owner == 1) && (box34.Owner == 1) &&  (box35.Owner == 1)
		{
			pi := 1
			return pi
		}
		; -------------------------------------------------------------------------------   row 6 across
 
		if(box36.Owner == 1) && (box37.Owner == 1) && (box38.Owner == 1) && (box39.Owner == 1)
		{
			pi := 1
			return pi
		}
		if(box37.Owner == 1) && (box38.Owner == 1) && (box39.Owner == 1) && (box40.Owner == 1)
		{
			pi := 1
			return pi
		}
		if(box38.Owner == 1) && (box39.Owner == 1) &&  (box40.Owner == 1) && (box41.Owner == 1)
		{
			pi := 1
			return pi
		}
		if(box39.Owner == 1) && (box40.Owner == 1) && (box41.Owner == 1) &&  (box42.Owner == 1)
		{
			pi := 1
			return pi
		}
		; -------------------------------------------------------------------------------   box1 diagnol
		
		if(box1.Owner == 1) && (box9.Owner == 1) && (box17.Owner == 1) && (box25.Owner == 1)
		{
			pi := 1
			return pi
		}
		if(box9.Owner == 1) && (box17.Owner == 1) && (box25.Owner == 1) && (box33.Owner == 1)
		{
			pi := 1
			return pi
		}
		if(box17.Owner == 1) && (box25.Owner == 1) && (box33.Owner == 1) && (box41.Owner == 1)
		{
			pi := 1
			return pi
		}
		; -------------------------------------------------------------------------------   box2 diagnol
		
		if(box2.Owner == 1) && (box10.Owner == 1) && (box18.Owner == 1) && (box26.Owner == 1)
		{
			pi := 1
			return pi
		}
		if(box10.Owner == 1) && (box18.Owner == 1) && (box26.Owner == 1) && (box34.Owner == 1)
		{
			pi := 1
			return pi
		}
		if(box18.Owner == 1) && (box26.Owner == 1) && (box34.Owner == 1) && (box42.Owner == 1)
		{
			pi := 1
			return pi
		}
		; -------------------------------------------------------------------------------   box3 diagnol
		
		if(box3.Owner == 1) && (box11.Owner == 1) && (box19.Owner == 1) && (box27.Owner == 1)
		{
			pi := 1
			return pi
		}
		if(box11.Owner == 1) && (box19.Owner == 1) && (box27.Owner == 1) && (box35.Owner == 1)
		{
			pi := 1
			return pi
		}
		; -------------------------------------------------------------------------------   box4 diagnol
		
		if(box4.Owner == 1) && (box12.Owner == 1) && (box20.Owner == 1) && (box28.Owner == 1)
		{
			pi := 1
			return pi
		}
		if(box4.Owner == 1) && (box10.Owner == 1) && (box16.Owner == 1) && (box22.Owner == 1)
		{
			pi := 1
			return pi
		}
		; -------------------------------------------------------------------------------   box5 diagnol
		
		if(box5.Owner == 1) && (box11.Owner == 1) && (box17.Owner == 1) && (box23.Owner == 1)
		{
			pi := 1
			return pi
		}
		if(box11.Owner == 1) && (box17.Owner == 1) && (box23.Owner == 1) && (box29.Owner == 1)
		{
			pi := 1
			return pi
		}
		; -------------------------------------------------------------------------------   box6 diagnol
		
		if(box6.Owner == 1) && (box12.Owner == 1) && (box18.Owner == 1) && (box24.Owner == 1)
		{
			pi := 1
			return pi
		}
		if(box12.Owner == 1) && (box18.Owner == 1) && (box24.Owner == 1) && (box30.Owner == 1)
		{
			pi := 1
			return pi
		}
		if(box18.Owner == 1) && (box24.Owner == 1) && (box30.Owner == 1) && (box36.Owner == 1)
		{
			pi := 1
			return pi
		}
		; -------------------------------------------------------------------------------   box7 diagnol
		
		if(box7.Owner == 1) && (box13.Owner == 1) && (box19.Owner == 1) && (box25.Owner == 1)
		{
			pi := 1
			return pi
		}
		if(box13.Owner == 1) && (box19.Owner == 1) && (box25.Owner == 1) && (box31.Owner == 1)
		{
			pi := 1
			return pi
		}
		if(box19.Owner == 1) && (box25.Owner == 1) && (box31.Owner == 1) && (box37.Owner == 1)
		{
			pi := 1
			return pi
		}
		; -------------------------------------------------------------------------------   box38  diagnol
		
		if(box38.Owner == 1) && (box32.Owner == 1) && (box26.Owner == 1) && (box20.Owner == 1)
		{
			pi := 1
			return pi
		}
		if(box32.Owner == 1) && (box26.Owner == 1) && (box20.Owner == 1) && (box14.Owner == 1)
		{
			pi := 1
			return pi
		}
		; -------------------------------------------------------------------------------   box39 diagnol
		
		if(box39.Owner == 1) && (box33.Owner == 1) && (box27.Owner == 1) && (box21.Owner == 1)
		{
			pi := 1
			return pi
		}
		if(box39.Owner == 1) && (box31.Owner == 1) && (box23.Owner == 1) && (box15.Owner == 1)
		{
			pi := 1
			return pi
		}
		; -------------------------------------------------------------------------------   box40 diagnol
		
		if(box40.Owner == 1) && (box32.Owner == 1) && (box24.Owner == 1) && (box16.Owner == 1)
		{
			pi := 1
			return pi
		}
		if(box32.Owner == 1) && (box24.Owner == 1) && (box16.Owner == 1) && (box8.Owner == 1)
		{
			pi := 1
			return pi
		}
	}
		; -------------------------------------------------------------------------------   row 1 down
	else if(pin == 2)
	{
		if(box1.Owner == 2) && (box8.Owner == 2) && (box15.Owner == 2) && (box22.Owner == 2)
		{
			pi := 2
			return pi
		}
		if(box8.Owner == 2) && (box15.Owner == 2) && (box22.Owner == 2) && (box29.Owner == 2)
		{
			pi := 2
			return pi
		}
		if(box15.Owner == 2) && (box22.Owner == 2) && (box29.Owner == 2) && (box36.Owner == 2)
		{
			pi := 2
			return pi
		}
		; -------------------------------------------------------------------------------   row 2 down
		
		if(box2.Owner == 2) && (box9.Owner == 2) && (box16.Owner == 2) && (box23.Owner == 2)
		{
			pi := 2
			return pi
		}
		if(box9.Owner == 2) && (box16.Owner == 2) && (box23.Owner == 2) && (box30.Owner == 2)
		{
			pi := 2
			return pi
		}
		if(box16.Owner == 2) && (box23.Owner == 2) && (box30.Owner == 2) && (box37.Owner == 2)
		{
			pi := 2
			return pi
		}
		; -------------------------------------------------------------------------------   row 3 down
		
		if(box3.Owner == 2) && (box10.Owner == 2) && (box17.Owner == 2) && (box24.Owner == 2)
		{
			pi := 2
			return pi
		}
		if(box10.Owner == 2) && (box17.Owner == 2) && (box24.Owner == 2) && (box31.Owner == 2)
		{
			pi := 2
			return pi
		}
		if(box17.Owner == 2) && (box24.Owner == 2) && (box31.Owner == 2) && (box38.Owner == 2)
		{
			pi := 2
			return pi
		}
		; -------------------------------------------------------------------------------   row 4 down
		
		if(box4.Owner == 2) && (box11.Owner == 2) && (box18.Owner == 2) && (box25.Owner == 2) 
		{
			pi := 2
			return pi
		}
		if(box11.Owner == 2) && (box18.Owner == 2) && (box25.Owner == 2) && (box32.Owner == 2)
		{
			pi := 2
			return pi
		}
		if(box18.Owner == 2) && (box25.Owner == 2) && (box32.Owner == 2) && (box39.Owner == 2)
		{
			pi := 2
			return pi
		}
		; -------------------------------------------------------------------------------   row 5 down
		
		if(box5.Owner == 2) && (box12.Owner == 2) && (box19.Owner == 2) && (box26.Owner == 2) 
		{
			pi := 2
			return pi
		}
		if(box12.Owner == 2) && (box19.Owner == 2) && (box26.Owner == 2) && (box33.Owner == 2)
		{
			pi := 2
			return pi
		}
		if(box19.Owner == 2) && (box26.Owner == 2) && (box33.Owner == 2) && (box40.Owner == 2)
		{
			pi := 2
			return pi
		}
		; -------------------------------------------------------------------------------   row 6 down
		
		if(box6.Owner == 2) && (box13.Owner == 2) && (box20.Owner == 2) && (box27.Owner == 2) 
		{
			pi := 2
			return pi
		}
		if(box13.Owner == 2) && (box20.Owner == 2) && (box27.Owner == 2) && (box34.Owner == 2)
		{
			pi := 2
			return pi
		}
		if(box20.Owner == 2) && (box27.Owner == 2) && (box34.Owner == 2) && (box41.Owner == 2)
		{
			pi := 2
			return pi
		}
		; -------------------------------------------------------------------------------   row 7 down
		
		if(box7.Owner == 2) && (box14.Owner == 2) && (box21.Owner == 2) && (box28.Owner == 2) 
		{
			pi := 2
			return pi
		}
		if(box14.Owner == 2) && (box21.Owner == 2) && (box28.Owner == 2) && (box35.Owner == 2)
		{
			pi := 2
			return pi
		}
		if(box22.Owner == 2) && (box28.Owner == 2) && (box35.Owner == 2) && (box42.Owner == 2)
		{
			pi := 2
			return pi
		}
		
		; -------------------------------------------------------------------------------   row 1 across 
		
		if(box1.Owner == 2) && (box2.Owner == 2) && (box3.Owner == 2) && (box4.Owner == 2)
		{
			pi := 2
			return pi
		} 
		if(box2.Owner == 2) && (box3.Owner == 2) && (box4.Owner == 2) && (box5.Owner == 2)
		{
			pi := 2
			return pi
		}
		if(box3.Owner == 2) && (box4.Owner == 2) &&  (box5.Owner == 2) && (box6.Owner == 2)
		{
			pi := 2
			return pi
		} 
		if(box4.Owner == 2) && (box5.Owner == 2) && (box6.Owner == 2) &&  (box7.Owner == 2)
		{
			pi := 2
			return pi
		}
		; -------------------------------------------------------------------------------   row 2 across
 
		if(box8.Owner == 2) && (box9.Owner == 2) && (box10.Owner == 2) && (box11.Owner == 2)
		{
			pi := 2
			return pi
		} 
		if(box9.Owner == 2) && (box10.Owner == 2) && (box11.Owner == 2) && (box12.Owner == 2)
		{
			pi := 2
			return pi
		}
		if(box10.Owner == 2) && (box11.Owner == 2) &&  (box12.Owner == 2) && (box13.Owner == 2)
		{
			pi := 2
			return pi
		} 
		if(box11.Owner == 2) && (box12.Owner == 2) && (box13.Owner == 2) &&  (box14.Owner == 2)
		{
			pi := 2
			return pi
		}
		; -------------------------------------------------------------------------------   row 3 across
 
		if(box15.Owner == 2) && (box16.Owner == 2) && (box17.Owner == 2) && (box18.Owner == 2)
		{
			pi := 2
			return pi
		}
		if(box16.Owner == 2) && (box17.Owner == 2) && (box18.Owner == 2) && (box19.Owner == 2)
		{
			pi := 2
			return pi
		}
		if(box17.Owner == 2) && (box18.Owner == 2) &&  (box19.Owner == 2) && (box20.Owner == 2)
		{
			pi := 2
			return pi
		}
		if(box18.Owner == 2) && (box19.Owner == 2) && (box20.Owner == 2) &&  (box21.Owner == 2)
		{
			pi := 2
			return pi
		}
		; -------------------------------------------------------------------------------   row 4 across 
		
		if(box22.Owner == 2) && (box23.Owner == 2) && (box24.Owner == 2) && (box25.Owner == 2) 
		{
			pi := 2
			return pi
		}
		if(box23.Owner == 2) && (box24.Owner == 2) && (box25.Owner == 2) && (box26.Owner == 2)
		{
			pi := 2
			return pi
		}
		if(box24.Owner == 2) && (box25.Owner == 2) &&  (box26.Owner == 2) && (box27.Owner == 2) 
		{
			pi := 2
			return pi
		}
		if(box25.Owner == 2) && (box26.Owner == 2) && (box27.Owner == 2) &&  (box28.Owner == 2)
		{
			pi := 2
			return pi
		}
		; -------------------------------------------------------------------------------   row 5 across 
		
		if(box29.Owner == 2) && (box30.Owner == 2) && (box31.Owner == 2) && (box32.Owner == 2)
		{
			pi := 2
			return pi
		}
		if(box30.Owner == 2) && (box31.Owner == 2) && (box32.Owner == 2) && (box33.Owner == 2)
		{
			pi := 2
			return pi
		}
		if(box31.Owner == 2) && (box32.Owner == 2) &&  (box33.Owner == 2) && (box34.Owner == 2)
		{
			pi := 2
			return pi
		}
		if(box32.Owner == 2) && (box33.Owner == 2) && (box34.Owner == 2) &&  (box35.Owner == 2)
		{
			pi := 2
			return pi
		}
		; -------------------------------------------------------------------------------   row 6 across
 
		if(box36.Owner == 2) && (box37.Owner == 2) && (box38.Owner == 2) && (box39.Owner == 2)
		{
			pi := 2
			return pi
		}
		if(box37.Owner == 2) && (box38.Owner == 2) && (box39.Owner == 2) && (box40.Owner == 2)
		{
			pi := 2
			return pi
		}
		if(box38.Owner == 2) && (box39.Owner == 2) &&  (box40.Owner == 2) && (box41.Owner == 2)
		{
			pi := 2
			return pi
		}
		if(box39.Owner == 2) && (box40.Owner == 2) && (box41.Owner == 2) &&  (box42.Owner == 2)
		{
			pi := 2
			return pi
		}
		; -------------------------------------------------------------------------------   box1 diagnol
		
		if(box1.Owner == 2) && (box9.Owner == 2) && (box17.Owner == 2) && (box25.Owner == 2)
		{
			pi := 2
			return pi
		}
		if(box9.Owner == 2) && (box17.Owner == 2) && (box25.Owner == 2) && (box33.Owner == 2)
		{
			pi := 2
			return pi
		}
		if(box17.Owner == 2) && (box25.Owner == 2) && (box33.Owner == 2) && (box41.Owner == 2)
		{
			pi := 2
			return pi
		}
		; -------------------------------------------------------------------------------   box2 diagnol
		
		if(box2.Owner == 2) && (box10.Owner == 2) && (box18.Owner == 2) && (box26.Owner == 2)
		{
			pi := 2
			return pi
		}
		if(box10.Owner == 2) && (box18.Owner == 2) && (box26.Owner == 2) && (box34.Owner == 2)
		{
			pi := 2
			return pi
		}
		if(box18.Owner == 2) && (box26.Owner == 2) && (box34.Owner == 2) && (box42.Owner == 2)
		{
			pi := 2
			return pi
		}
		; -------------------------------------------------------------------------------   box3 diagnol
		
		if(box3.Owner == 2) && (box11.Owner == 2) && (box19.Owner == 2) && (box27.Owner == 2)
		{
			pi := 2
			return pi
		}
		if(box11.Owner == 2) && (box19.Owner == 2) && (box27.Owner == 2) && (box35.Owner == 2)
		{
			pi := 2
			return pi
		}
		; -------------------------------------------------------------------------------   box4 diagnol
		
		if(box4.Owner == 2) && (box12.Owner == 2) && (box20.Owner == 2) && (box28.Owner == 2)
		{
			pi := 2
			return pi
		}
		if(box4.Owner == 2) && (box10.Owner == 2) && (box16.Owner == 2) && (box22.Owner == 2)
		{
			pi := 2
			return pi
		}
		; -------------------------------------------------------------------------------   box5 diagnol
		
		if(box5.Owner == 2) && (box11.Owner == 2) && (box17.Owner == 2) && (box23.Owner == 2)
		{
			pi := 2
			return pi
		}
		if(box11.Owner == 2) && (box17.Owner == 2) && (box23.Owner == 2) && (box29.Owner == 2)
		{
			pi := 2
			return pi
		}
		; -------------------------------------------------------------------------------   box6 diagnol
		
		if(box6.Owner == 2) && (box12.Owner == 2) && (box18.Owner == 2) && (box24.Owner == 2)
		{
			pi := 2
			return pi
		}
		if(box12.Owner == 2) && (box18.Owner == 2) && (box24.Owner == 2) && (box30.Owner == 2)
		{
			pi := 2
			return pi
		}
		if(box18.Owner == 2) && (box24.Owner == 2) && (box30.Owner == 2) && (box36.Owner == 2)
		{
			pi := 2
			return pi
		}
		; -------------------------------------------------------------------------------   box7 diagnol
		
		if(box7.Owner == 2) && (box13.Owner == 2) && (box19.Owner == 2) && (box25.Owner == 2)
		{
			pi := 2
			return pi
		}
		if(box13.Owner == 2) && (box19.Owner == 2) && (box25.Owner == 2) && (box31.Owner == 2)
		{
			pi := 2
			return pi
		}
		if(box19.Owner == 2) && (box25.Owner == 2) && (box31.Owner == 2) && (box37.Owner == 2)
		{
			pi := 2
			return pi
		}
		; -------------------------------------------------------------------------------   box38  diagnol
		
		if(box38.Owner == 2) && (box32.Owner == 2) && (box26.Owner == 2) && (box20.Owner == 2)
		{
			pi := 2
			return pi
		}
		if(box32.Owner == 2) && (box26.Owner == 2) && (box20.Owner == 2) && (box14.Owner == 2)
		{
			pi := 2
			return pi
		}
		; -------------------------------------------------------------------------------   box39 diagnol
		
		if(box39.Owner == 2) && (box33.Owner == 2) && (box27.Owner == 2) && (box12.Owner == 2)
		{
			pi := 2
			return pi
		}
		if(box39.Owner == 2) && (box31.Owner == 2) && (box23.Owner == 2) && (box15.Owner == 2)
		{
			pi := 2
			return pi
		}
		; -------------------------------------------------------------------------------   box40 diagnol
		
		if(box40.Owner == 2) && (box32.Owner == 2) && (box24.Owner == 2) && (box16.Owner == 2)
		{
			pi := 2
			return pi
		}
		if(box32.Owner == 2) && (box24.Owner == 2) && (box16.Owner == 2) && (box8.Owner == 2)
		{
			pi := 2
			return pi
		}
	}
	return pi
}

AnimatePieces(rg, tg, mp)
{
	bv := 1
	dv := findboxnumberC(tg)
	if(dv < 1)
		return 0
	if(mp != 6)
	{
		if(box%dv%.Status == "I")
			mp := 6
		else
		{
			dv := dv - 7
			if(box%dv%.Status == "I")
				mp := 5
			else
			{
				dv := dv - 7
				if(box%dv%.Status == "I")
					mp := 4
				else
				{
					dv := dv - 7
					if(box%dv%.Status == "I")
						mp := 3
					else
					{
						dv := dv - 7
						if(box%dv%.Status == "I")
							mp := 2
						else
						{
							dv := dv - 7
							if(box%dv%.Status == "I")
								mp := 1
						}
					}
				}
			}
		}
	}
	loop, %mp%
	{	
		box%rg%.Owner := PlayerNumber
		box%rg%.Status := "A"
		if(PlayerNumber == 1)
			guicontrol, show, box%rg%picr
		else
			guicontrol, show, box%rg%picb
		sleep 500
		if(bv == mp)
		{
			break
		}
			
		if(PlayerNumber == 1)
			guicontrol, hide, box%rg%picr
		else
			guicontrol, hide, box%rg%picb
		
		box%rg%.Owner := 0
		box%rg%.Status := "I"
		rg += 7
		bv++
	}
	
	
	
	return
}
showPlyrTurn()
{
	if(PlayerNumber == 1)
	{
		guicontrol, show, Plyr1Turn
	}
	else
	{
		guicontrol, show, Plyr2Turn
	}
}
hidePlyrTurn()
{
	guicontrol, hide, Plyr1Turn
	
	guicontrol, hide, Plyr2Turn
		
	return
}
showPlyrPiece()
{
	if(PlayerNumber == 1)
		guicontrol, show, player1piece
	else
		guicontrol, show, player2piece
	
	return
}
hidePlyrPiece()
{
	guicontrol, hide, player1piece
	guicontrol, hide, player2piece
	
	return
}
findboxnumberC(contrlin)
{
	AP := 0
	
	if(contrlin == 1) || (contrlin == 8) || (contrlin == 15) || (contrlin == 22) || (contrlin == 29) || (contrlin == 36)
	{
		AP := 36
	}
	if(contrlin == 2) || (contrlin == 9) || (contrlin == 16) || (contrlin == 23) || (contrlin == 30) || (contrlin == 37)
	{
		AP := 37
	}
	if(contrlin == 3) || (contrlin == 10) || (contrlin == 17) || (contrlin == 24) || (contrlin == 31) || (contrlin == 38)
	{
		AP := 38
	}
	if(contrlin == 4) || (contrlin == 11) || (contrlin == 18) || (contrlin == 25) || (contrlin == 32) || (contrlin == 39)
	{
		AP := 39
	}
	if(contrlin == 5) || (contrlin == 12) || (contrlin == 19) || (contrlin == 26) || (contrlin == 33) || (contrlin == 40)
	{
		AP := 40
	}
	if(contrlin == 6) || (contrlin == 13) || (contrlin == 20) || (contrlin == 27) || (contrlin == 34) || (contrlin == 41)
	{
		AP := 41
	}
	if(contrlin == 7) || (contrlin == 14) || (contrlin == 21) || (contrlin == 28) || (contrlin == 35) || (contrlin == 42)
	{
		AP := 42
	}
	
	return AP
}
FindRow(numin)
{
	ro := box%numin%.Row
	
	return ro
}
FindColumn(boxnumber)
{
	cul := box%boxnumber%.Column
	
	return cul
}
PlacePiece(Row, boxin)
{
	;msgbox,,,colum(%colum%) boxin(%boxin%)
	if(box%Row%.Status == "I")
	{
		box%Row%.Owner := PlayerNumber
		box%Row%.Status := "A"
	}
	else
	{
		Row := Row - 7
		if(box%Row%.Status == "I")
		{
			box%Row%.Owner := PlayerNumber
			box%Row%.Status := "A"
		}
		else
		{
			Row := Row - 7
			if(box%Row%.Status == "I")
			{
				box%Row%.Owner := PlayerNumber
				box%Row%.Status := "A"
			}
			else
			{
				Row := Row - 7
				if(box%Row%.Status == "I")
				{
					box%Row%.Owner := PlayerNumber
					box%Row%.Status := "A"
				}
				else
				{
					Row := Row - 7
					if(box%Row%.Status == "I")
					{
						box%Row%.Owner := PlayerNumber
						box%Row%.Status := "A"
					}
					else
					{
						Row := Row - 7
						if(box%Row%.Status == "I")
						{
							box%Row%.Owner := PlayerNumber
							box%Row%.Status := "A"
						}
					}
				}
			}
		}
	}
	return
}

findC4Control(acontrol)
{
	;msgbox,,,control (%acontrol%)
	if(acontrol == "Static104")
		return 1
	if(acontrol == "Static105")
		return 1
	if(acontrol == "Button22") || (acontrol == "Static16") || (acontrol == "Static18") || (acontrol == "Static14")
		return -1
	if(acontrol == "")
		return -1
	str := strlen(acontrol)
	ret := substr(acontrol, 7, 2)
	;msgbox,,,ret(%ret%)
	return ret
		
	return 0
}

;   --------------------------------  3T    --------------------------------------------------- COMPLETE ---------------- EX P2

setuptoepieces()
{
	loop, 9
	{
		a := Tbox%a_index%.Owner := 0
		b := Tbox%a_index%.Status := "I"
	}
	return
}
show3TGameTiles()
{
	guicontrol, show, boardbox1
	guicontrol, show, boardbox2
	guicontrol, show, boardbox3
	guicontrol, show, boardbox4
	guicontrol, show, boardbox5
	guicontrol, show, boardbox6
	guicontrol, show, boardbox7
	guicontrol, show, boardbox8
	guicontrol, show, boardbox9
	return
}
show3TPlyrTurn()
{
	if(PlayerNumber == 1)
	{
		guicontrol, show, anp1
	}
	else
	{
		guicontrol, show, anp2
	}
	return
}
show3TPlyrPiece()
{
	if(PlayerNumber == 1)
	{
		guicontrol, show, 3Tp1piece
	}
	else
	{
		guicontrol, show, 3Tp2piece
	}
	return
}
show3TButtons()
{
	guicontrol, show, Replyy
	guicontrol, show, Set
	guicontrol, show, Extt
	return
}
show3TPlayerStatsBorder()
{
	guicontrol, show, Pl1Stats
	guicontrol, show, Pl2Stats
	return
}
hide3TPlayerStatsborder()
{
	guicontrol, hide, Pl1Stats
	guicontrol, hide, Pl2Stats
	return
}
show3TStats()
{
	p1statstxt := Plyr1Name "'s Game Stats "
	p2statstxt := Plyr2Name "'s Game Stats "
	guicontrol, hide, p1stats
	guicontrol,, p1stats, %p1statstxt%
	guicontrol, show, p1stats
	guicontrol, hide, p2stats
	guicontrol,, p2stats, %p2statstxt%
	guicontrol, show, p2stats
	guicontrol, show, 3TTGPp1txt
	guicontrol, show, 3TTGWp1txt
	guicontrol, show, 3TTGLp1txt
	guicontrol, show, 3TTDGp1txt
	guicontrol, show, 3TTGPp2txt
	guicontrol, show, 3TTGWp2txt
	guicontrol, show, 3TTGLp2txt
	guicontrol, show, 3TTDGp2txt
	guicontrol, hide, 3TTGPp1
	guicontrol,, 3TTGPp1, %3TTGamesp1%
	guicontrol, show, 3TTGPp1
	guicontrol, hide, 3TTGWp1
	guicontrol,, 3TTGWp1, %3TWGamesp1%
	guicontrol, show, 3TTGWp1
	guicontrol, hide, 3TTGLp1
	guicontrol,, 3TTGLp1, %3TLGamesp1%
	guicontrol, show, 3TTGLp1
	guicontrol, hide, 3TTDGp1
	guicontrol,, 3TTDGp1, %3TDGamesp1%
	guicontrol, show, 3TTDGp1
	guicontrol, hide, 3TTGPp2
	guicontrol,, 3TTGPp2, %3TTGamesp2%
	guicontrol, show, 3TTGPp2
	guicontrol, hide, 3TTGWp2
	guicontrol,, 3TTGWp2, %3TWGamesp2%
	guicontrol, show, 3TTGWp2
	guicontrol, hide, 3TTGLp2
	guicontrol,, 3TTGLp2, %3TLGamesp2%
	guicontrol, show, 3TTGLp2
	guicontrol, hide, 3TTDGp2
	guicontrol,, 3TTDGp2, %3TDGamesp2%
	guicontrol, show, 3TTDGp2
	Gui, Show, x467 y123 h590 w478, Tic Tac Toe V_%3Tversion% Game Stats
	return
}
hide3TStats()
{
	guicontrol, hide, 3TTGPp1
	guicontrol, hide, 3TTGWp1
	guicontrol, hide, 3TTGLp1
	guicontrol, hide, 3TTDGp1
	guicontrol, hide, 3TTGPp2
	guicontrol, hide, 3TTGWp2
	guicontrol, hide, 3TTGLp2
	guicontrol, hide, 3TTDGp2
	guicontrol, hide, 3TTGPp1txt
	guicontrol, hide, 3TTGWp1txt
	guicontrol, hide, 3TTGLp1txt
	guicontrol, hide, 3TTDGp1txt
	guicontrol, hide, 3TTGPp2txt
	guicontrol, hide, 3TTGWp2txt
	guicontrol, hide, 3TTGLp2txt
	guicontrol, hide, 3TTDGp2txt
	return
}
show3TGameInfoBoarder()
{
	guicontrol, show, GameInfoBorder
	return
}
hide3TGameInfoBoarder()
{
	guicontrol, hide, GameInfoBorder
	return
}
checkdraw()
{
	if(Tbox9.Owner != false) && (Tbox8.Owner != false) && (Tbox7.Owner != false) && (Tbox6.Owner != false) && (Tbox5.Owner != false) && (Tbox4.Owner != false) && (Tbox3.Owner != false) && (Tbox2.Owner != false) && (Tbox1.Owner != false)
	{
		return true
	}
	return false
}

CheckGame3T(pl)
{
	pi := 0
	
	if(pl == 1)
	{
		if(Tbox1 == 1) && (Tbox2.Owner == 1) && (Tbox3.Owner == 1)
		{
			pi := 1
			return pi
		}
		if(Tbox4.Owner == 1) && (Tbox5.Owner == 1) && (Tbox6.Owner == 1)
		{
			pi := 1
			return pi
		}
		if(Tbox7.Owner == 1) && (Tbox8.Owner == 1) && (Tbox9.Owner == 1)
		{
			pi := 1
			return pi
		}
		if(Tbox1.Owner == 1) && (Tbox4.Owner == 1) && (Tbox7.Owner == 1)
		{
			pi := 1
			return pi
		}
		if(Tbox2.Owner == 1) && (Tbox5.Owner == 1) && (Tbox8.Owner == 1)
		{
			pi := 1
			return pi
		}
		if(Tbox3.Owner == 1) && (Tbox6.Owner == 1) && (Tbox9.Owner == 1)
		{
			pi := 1
			return pi
		}
		if(Tbox1.Owner == 1) && (Tbox5.Owner == 1) && (Tbox9.Owner == 1)
		{
			pi := 1
			return pi
		}
		if(Tbox3.Owner == 1) && (Tbox5.Owner == 1) && (Tbox7.Owner == 1)
		{
			pi := 1
			return pi
		}
	}
	if(pl == 2)
	{
		if(Tbox1.Owner == 2)
		{
			if(Tbox2.Owner == 2)
			{
				if(Tbox3.Owner == 2)
				{
					pi := 1
					return pi
				}
			}
		}
		if(Tbox4.Owner == 2) && (Tbox5.Owner == 2) && (Tbox6.Owner == 2)
		{
			pi := 1
			return pi
		}
		if(Tbox7.Owner == 2) && (Tbox8.Owner == 2) && (Tbox9.Owner == 2)
		{
			pi := 1
			return pi
		}
		if(Tbox1.Owner == 2)
		{
			if(Tbox4.Owner == 2)
			{
				if(Tbox7.Owner == 2)
				{
					pi := 1
					return pi
				}
			}
		}
		if(Tbox2.Owner == 2) && (Tbox5.Owner == 2) && (Tbox8.Owner == 2)
		{
			pi := 1
			return pi
		}
		if(Tbox3.Owner == 2) && (Tbox6.Owner == 2) && (Tbox9.Owner == 2)
		{
			pi := 1
			return pi
		}
		if(Tbox1.Owner == 2) && (Tbox5.Owner == 2) && (Tbox9.Owner == 2)
		{
			pi := 1
			return pi
		}
		if(Tbox3.Owner == 2) && (Tbox5.Owner == 2) && (Tbox7.Owner == 2)
		{
			pi := 1
			return pi
		}
	}
	return pi
}
getrandomdrawnum2()
{
	rn :=
	random, rn, 6, 10
	return rn
}
getrandomdrawnum1()
{
	rn :=
	random, rn, 1, 5
	return rn
}
getrandomnum()
{
	rn :=
	random, rn, 1, 9
	return rn
}
checkdrawnumbers(drawnum)
{
	if(drawnum == 6)
		drawnum := 1
	if(drawnum == 7)
		drawnum := 2
	if(drawnum == 8)
		drawnum := 3
	if(drawnum == 9)
		drawnum := 4
	if(drawnum == 10)
		drawnum := 5
	return drawnum
}

winnerending()
{
	WINNER := true
	EndSettings := true
	GameComplete := true
	blockinput, mousemoveoff
	hide3TButtons()
	showGamePieces()
	hide3TPlyrTurn()
	if(PlayerNumber == 2)
	{
		updategamestats(0)
		updategamestats(2)
		updategamestats(3)
		guicontrol, show, winpic2
		if(SoundAnswer == 1)
			soundplay, res\3T\cheer.wav, wait
		sleep 1000
		guicontrol, show, losspic1
		guicontrol, hide, winpic2
		if(SoundAnswer == 1)
			soundplay, res\3T\aah.wav, wait
		sleep 1000
		guicontrol, hide, losspic1		
		guicontrol, show, winpic2
		if(SoundAnswer == 1)
			soundplay, res\3T\cheer.wav, wait
		sleep 1000
		guicontrol, show, losspic1
		guicontrol, hide, winpic2
		if(SoundAnswer == 1)
			soundplay, res\3T\aah.wav, wait
		sleep 1000
		guicontrol, hide, losspic1
		guicontrol, show, winpic2
		sleep 1000
		guicontrol, show, losspic1
		guicontrol, hide, winpic2
		sleep 1000
		guicontrol, hide, losspic1
		guicontrol, show, winpic2
		sleep 1000
		guicontrol, show, losspic1
		guicontrol, hide, winpic2
		sleep 1000
		guicontrol, hide, losspic1
	}
	if(PlayerNumber == 1)
	{	 
		updategamestats(0)
		updategamestats(1)
		updategamestats(4)
		guicontrol, show, winpic1
		if(SoundAnswer == 1)
			soundplay, res\3T\cheer.wav, wait
		sleep 1000
		guicontrol, show, losspic2
		guicontrol, hide, winpic1
		if(SoundAnswer == 1)
			soundplay, res\3T\aah.wav, wait
		sleep 1000
		guicontrol, hide, losspic2
		guicontrol, show, winpic1
		if(SoundAnswer == 1)
			soundplay, res\3T\cheer.wav, wait
		sleep 1000
		guicontrol, show, losspic2
		guicontrol, hide, winpic1
		if(SoundAnswer == 1)
			soundplay, res\3T\aah.wav, wait
		sleep 1000
		guicontrol, hide, losspic2
		guicontrol, show, winpic1
		sleep 1000
		guicontrol, show, losspic2
		guicontrol, hide, winpic1
		sleep 1000
		guicontrol, hide, losspic2
		guicontrol, show, winpic1
		sleep 1000
		guicontrol, show, losspic2
		guicontrol, hide, winpic1
		sleep 1000
		guicontrol, hide, losspic2
	}
	hide3TPlyrPiece()
	showGameOver()
	sleep 2000
	gui, hide
	hideGameBoard3T()
	loadstats()
	show3Tstats()	
	sleep 4000
	hideallstats(WhichGame)
	show3TGameTiles()
	showGamePieces()
	hide3TPlyrPiece()
	Gui, Show, x600 y200 h700 w800 center, 3T Tic Tac Toe V_%3Tversion%
	show3TButtons()
	return
}

drawending()
{
	DRAWGAME := true
	EndSettings := true
	GameComplete := true
	blockinput, mousemoveoff
	hide3TButtons()
	showGamePieces()
	hide3TPlyrTurn()
	updategamestats(0)
	updategamestats(5)
	xi := getrandomdrawnum1()
	guicontrol, show, drawpic%xi%
	sleep 1000
	loop, 500
	{
		xe := getrandomdrawnum2()
		aa := checkdrawnumbers(xe)
		if(aa != xi)
			break
	}
	guicontrol, hide, drawpic%xi%
	guicontrol, show, drawpic%xe%
	sleep 1000
	guicontrol, hide, drawpic%xe%
	xi := getrandomdrawnum1()
	guicontrol, show, drawpic%xi%
	sleep 1000
	loop, 500
	{
		xe := getrandomdrawnum2()
		aa := checkdrawnumbers(xe)
		if(aa != xi)
			break
	}
	guicontrol, hide, drawpic%xi%
	guicontrol, show, drawpic%xe%
	sleep 1000
	guicontrol, hide, drawpic%xe%
	xi := getrandomdrawnum1()
	guicontrol, show, drawpic%xi%
	sleep 1000
	loop, 500
	{
		xe := getrandomdrawnum2()
		aa := checkdrawnumbers(xe)
		if(aa != xi)
			break
	}
	guicontrol, hide, drawpic%xi%
	guicontrol, show, drawpic%xe%
	sleep 1000
	guicontrol, hide, drawpic%xe%
	xi := getrandomdrawnum1()
	guicontrol, show, drawpic%xi%
	sleep 1000
	loop, 500
	{
		xe := getrandomdrawnum2()
		aa := checkdrawnumbers(xe)
		if(aa != xi)
			break
	}
	guicontrol, hide, drawpic%xi%
	guicontrol, show, drawpic%xe%
	sleep 1000
	guicontrol, hide, drawpic%xe%
	showGameOver()
	sleep 2000
	gui, hide
	hideGameBoard3T()
	loadstats()
	show3Tstats()
	sleep 4000
	hideallstats(WhichGame)
	show3TGameTiles()
	showGamePieces()
	Gui, Show, x600 y200 h700 w800 center, 3T Tic Tac Toe V_%3Tversion%
	show3TButtons()
	return
}
showGameOver()
{
	guicontrol, show, GameTxt
	guicontrol, show, OverTxt
	return
}
hideGameOver()
{
	guicontrol, hide, GameTxt
	guicontrol, hide, OverTxt
	return
}	

showGamePieces()
{
	if(Tbox1.Owner != false)
	{
		if(Tbox1.Owner == 1)
		{
			guicontrol, show, b1x
		}
		else
		{
			guicontrol, show, b1o
		}
	}
	if(Tbox2.Owner != false)
	{
		if(Tbox2.Owner == 1)
		{
			guicontrol, show, b2x
		}
		else
		{
			guicontrol, show, b2o
		}
	}
	if(Tbox3.Owner != false)
	{
		if(Tbox3.Owner == 1)
		{
			guicontrol, show, b3x
		}
		else
		{
			guicontrol, show, b3o
		}
	}
	if(Tbox4.Owner != false)
	{
		if(Tbox4.Owner == 1)
		{
			guicontrol, show, b4x
		}
		else
		{
			guicontrol, show, b4o
		}
	}
	if(Tbox5.Owner != false)
	{
		if(Tbox5.Owner == 1)
		{
			guicontrol, show, b5x
		}
		else
		{
			guicontrol, show, b5o
		}
	}
	if(Tbox6.Owner != false)
	{
		if(Tbox6.Owner == 1)
		{
			guicontrol, show, b6x
		}
		else
		{
			guicontrol, show, b6o
		}
	}
	if(Tbox7.Owner != false)
	{
		if(Tbox7.Owner == 1)
		{
			guicontrol, show, b7x
		}
		else
		{
			guicontrol, show, b7o
		}
	}
	if(Tbox8.Owner != false)
	{
		if(Tbox8.Owner == 1)
		{
			guicontrol, show, b8x
		}
		else
		{
			guicontrol, show, b8o
		}
	}
	if(Tbox9.Owner != false)
	{
		if(Tbox9.Owner == 1)
		{
			guicontrol, show, b9x
		}
		else
		{
			guicontrol, show, b9o
		}
	}
	return
}
hideGamePieces()
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
	guicontrol, hide, winpic3
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
	
	return
}


ComThink()
{
	ran :=
	loop, 500
		{	
			ran := getrandomnum()
			rancheck := Tbox%ran%.Status
			if(rancheck == "I")
				break
		}
		if(Difficulty == 1)
		{
			checknumber := SmartPlyr()
			if(checknumber != 0)
			{
				return checknumber
			}
			else
			{
				return ran
			}
		}
		else
		{
			return ran
		}
}
SmartPlyr()
{
	;                   ------------------ Across ----------
	if(Tbox1.Owner == 1) && (Tbox2.Owner == 1) && (Tbox3.Owner == 0)
		return 3
	else if(Tbox1.Owner == 1) && (Tbox3.Owner == 1) && (Tbox2.Owner == 0)
		return 2
	else if(Tbox2.Owner == 1) && (Tbox3.Owner == 1) && (Tbox1.Owner == 0)
		return 1
	else if(Tbox4.Owner == 1) && (Tbox5.Owner == 1) && (Tbox6.Owner == 0)
		return 6
	else if(Tbox4.Owner == 1) && (Tbox6.Owner == 1) && (Tbox5.Owner == 0)
		return 5
	else if(Tbox5.Owner == 1) && (Tbox6.Owner == 1) && (Tbox4.Owner == 0)
		return 4
	else if(Tbox7.Owner == 1) && (Tbox8.Owner == 1) && (Tbox9.Owner == 0)
		return 9
	else if(Tbox7.Owner == 1) && (Tbox9.Owner == 1) && (Tbox8.Owner == 0)
		return 8
	else if(Tbox8.Owner == 1) && (Tbox9.Owner == 1) && (Tbox7.Owner == 0)
		return 7
	;                   --------------------------------------
	;                   ------------------ Down  --------------
	else if(Tbox1.Owner == 1) && (Tbox4.Owner == 1) && (Tbox7.Owner == 0)
		return 7
	else if(Tbox1.Owner == 1) && (Tbox7.Owner == 1) && (Tbox4.Owner == 0)
		return 4
	else if(Tbox4.Owner == 1) && (Tbox7.Owner == 1) && (Tbox1.Owner == 0)
		return 1
	else if(Tbox2.Owner == 1) && (Tbox5.Owner == 1) && (Tbox8.Owner == 0)
		return 8
	else if(Tbox2.Owner == 1) && (Tbox8.Owner == 1) && (Tbox5.Owner == 0)
		return 5
	else if(Tbox5.Owner == 1) && (Tbox8.Owner == 1) && (Tbox2.Owner == 0)
		return 2
	else if(Tbox3.Owner == 1) && (Tbox6.Owner == 1) && (Tbox9.Owner == 0)
		return 9
	else if(Tbox3.Owner == 1) && (Tbox8.Owner == 1) && (Tbox6.Owner == 0)
		return 6
	else if(Tbox6.Owner == 1) && (Tbox9.Owner == 1) && (Tbox3.Owner == 0)
		return 3
	; --------------------------------------------------------------------------------------------------------
	; ------------------------------------------ diaganol --------------------------
	else if(Tbox1.Owner == 1) && (Tbox5.Owner == 1) && (Tbox9.Owner == 0)
		return 9
	else if(Tbox1.Owner == 1) && (Tbox9.Owner == 1) && (Tbox5.Owner == 0)
		return 5
	else if(Tbox5.Owner == 1) && (Tbox9.Owner == 1) && (Tbox1.Owner == 0)
		return 1
	else if(Tbox3.Owner == 1) && (Tbox5.Owner == 1) && (Tbox7.Owner == 0)
		return 7
	else if(Tbox3.Owner == 1) && (Tbox7.Owner == 1) && (Tbox5.Owner == 0)
		return 5
	else if(Tbox5.Owner == 1) && (Tbox7.Owner == 1) && (Tbox3.Owner == 0)
		return 3
	; ---------------------------------------------------------------------------------------------------------
	
	return 0
}

hideGameBoard3T()
{
	guicontrol, hide, plyr1firsttxt
	guicontrol, hide, plyr2firsttxt
	guicontrol, hide, boardbox1
	guicontrol, hide, boardbox2
	guicontrol, hide, boardbox3
	guicontrol, hide, boardbox4
	guicontrol, hide, boardbox5
	guicontrol, hide, boardbox6
	guicontrol, hide, boardbox7
	guicontrol, hide, boardbox8
	guicontrol, hide, boardbox9
	guicontrol, hide, btn1
	guicontrol, hide, btn2
	guicontrol, hide, btn3
	guicontrol, hide, btn4
	guicontrol, hide, btn5
	guicontrol, hide, btn6
	guicontrol, hide, btn7
	guicontrol, hide, btn8
	guicontrol, hide, btn9
	guicontrol, hide, Replyy
	guicontrol, hide, Set
	guicontrol, hide, Extt
	guicontrol, hide, gameinfoborder
	guicontrol, hide, Pl1Stats
	guicontrol, hide, Pl2Stats
	guicontrol, hide, anp1
	guicontrol, hide, anp2
	guicontrol, hide, 3TTGPp1
	guicontrol, hide, 3TTGWp1
	guicontrol, hide, 3TTGLp1
	guicontrol, hide, 3TTDGp1
	guicontrol, hide, 3TTGPp2
	guicontrol, hide, 3TTGWp2
	guicontrol, hide, 3TTGLp2
	guicontrol, hide, 3TTDGp2
	guicontrol, hide, 3TTGPp1txt
	guicontrol, hide, 3TTGWp1txt
	guicontrol, hide, 3TTGLp1txt
	guicontrol, hide, 3TTDGp1txt
	guicontrol, hide, 3TTGPp2txt
	guicontrol, hide, 3TTGWp2txt
	guicontrol, hide, 3TTGLp2txt
	guicontrol, hide, 3TTDGp2txt
	guicontrol, hide,GameTxt
	guicontrol, hide, OverTxt
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
	return
}
find3Tcontrol(acontrol)
{
	if(acontrol == "Button22")
		return 1
	if(acontrol == "Button23")
		return 2
	if(acontrol == "Button24")
		return 3
	if(acontrol == "Button25")
		return 4
	if(acontrol == "Button26")
		return 5
	if(acontrol == "Button27")
		return 6
	if(acontrol == "Button28")
		return 7
	if(acontrol == "Button29")
		return 8
	if(acontrol == "Button30")
		return 9
	return 0
}

;    -------------------------------- Checkers     ------------------------------------------------------

showCButtons()
{
	guicontrol, show, Creply
	guicontrol, show, Mmenu
	guicontrol, show, exitt
	return
}
smallgen(strglen)
{
	y :=
	
	random, y, 1, %strglen%
	
	return y
}
SemiRanNumberGen(dd)
{
	w := 
	if(dd)
		return dd
	random, w, 1, 12
	
	return w
}
SetUpPieces()
{
	yu := 13
	yt := 21
	jy := 1
	xx := 1
	
	loop, 12
	{
		checkerbox%jy%.Position := jy
		checkerbox%jy%.ID := jy
		checkerbox%jy%.Status := "Active"
		checkerbox%jy%.Owner := 1
		checkerbox%jy%.Kinged := 0
		if(jy == 1)
		{
			checkerbox%jy%.Moves := "05"
			checkerbox%jy%.Jumpmoves := "10"
		}
		else if(jy == 2)
		{
			checkerbox%jy%.Moves := "0506"
			checkerbox%jy%.Jumpmoves := "0911"
		}
		else if(jy == 3)
		{
			checkerbox%jy%.Moves := "0607"
			checkerbox%jy%.Jumpmoves := "1012"
		}
		else if(jy == 4)
		{
			checkerbox%jy%.Moves := "0708"
			checkerbox%jy%.Jumpmoves := "11"
		}
		else if(jy == 5)
		{
			checkerbox%jy%.Moves := "01020910"
			checkerbox%jy%.Jumpmoves := "14"
		}
		else if(jy == 6)
		{
			checkerbox%jy%.Moves := "02031011"
			checkerbox%jy%.Jumpmoves := "1315"
		}
		else if(jy == 7)
		{
			checkerbox%jy%.Moves := "03041112"
			checkerbox%jy%.Jumpmoves := "1416"
		}
		else if(jy == 8)
		{
			checkerbox%jy%.Moves := "0412"
			checkerbox%jy%.Jumpmoves := "15"
		}
		else if(jy == 9)
		{
			checkerbox%jy%.Moves := "0513"
			checkerbox%jy%.Jumpmoves := "0218"
		}
		else if(jy == 10)
		{
			checkerbox%jy%.Moves := "05061314"
			checkerbox%jy%.Jumpmoves := "01031719"
		}
		else if(jy == 11)
		{
			checkerbox%jy%.Moves := "06071415"
			checkerbox%jy%.Jumpmoves := "02041820"
		}
		else if(jy == 12)
		{
			checkerbox%jy%.Moves := "07081516"
			checkerbox%jy%.Jumpmoves := "0319"
		}
		;msgbox,,,% "loop 12 1 pos (" checkerbox%jy%.Position ") stat (" checkerbox%jy%.Status ") own (" checkerbox%jy%.Owner ") king (" checkerbox%jy%.Kinged ") moves (" Checkerbox%jy%.Moves ")"
		jy++
	}
	loop, 8
	{
		checkerbox%yu%.Position := yu
		checkerbox%yu%.ID := 0
		checkerbox%yu%.Status := "Blank"
		checkerbox%yu%.Owner := 0
		checkerbox%yu%.Kinged := 0
		if(yu == 13)
		{
			checkerbox%yu%.Moves := "09101718"
			checkerbox%yu%.Jumpmoves := "0622"
		}
		else if(yu == 14)
		{
			checkerbox%yu%.Moves := "10111819"
			checkerbox%yu%.Jumpmoves := "05072123"
		}
		else if(yu == 15)   
		{
			checkerbox%yu%.Moves := "11121920"
			checkerbox%yu%.Jumpmoves := "06082224"
		}
		else if(yu == 16)
		{
			checkerbox%yu%.Moves := "1220"
			checkerbox%yu%.Jumpmoves := "0723" 
		}
		else if(yu == 17)
		{
			checkerbox%yu%.Moves := "1321"
			checkerbox%yu%.Jumpmoves := "1026"
		}
		else if(yu == 18)
		{
			checkerbox%yu%.Moves := "13142122"
			checkerbox%yu%.Jumpmoves := "09112527"
		}
		else if(yu == 19)
		{
			checkerbox%yu%.Moves := "14152223"
			checkerbox%yu%.Jumpmoves := "10122628"
		}
		else if(yu == 20)
		{
			checkerbox%yu%.Moves := "15162324"
			checkerbox%yu%.Jumpmoves := "1127"
		}
	;;	msgbox,,,% "loop 8 pos (" checkerbox%yu%.Position ") stat (" checkerbox%yu%.Status ") own (" checkerbox%yu%.Owner ") king (" checkerbox%yu%.Kinged ")"
		yu++
	}
	loop, 12
	{
		checkerbox%yt%.Position := yt
		checkerbox%yt%.ID := xx
		checkerbox%yt%.Status := "Active"
		checkerbox%yt%.Owner := 2
		checkerbox%yt%.Kinged := 0
		if(yt == 21)
		{
			checkerbox%yt%.Moves := "17182526"
			checkerbox%yt%.Jumpmoves := "1430"
		}
		else if(yt == 22)
		{
			checkerbox%yt%.Moves := "18192627"
			checkerbox%yt%.Jumpmoves := "13152931"
		}
		else if(yt == 23)
		{
			checkerbox%yt%.Moves := "19202728"
			checkerbox%yt%.Jumpmoves := "14163032"
		}
		else if(yt == 24)
		{
			checkerbox%yt%.Moves := "2028"
			checkerbox%yt%.Jumpmoves := "1531"
		}
		else if(yt == 25)
		{
			checkerbox%yt%.Moves := "2129"
			checkerbox%yt%.Jumpmoves := "18"
		}
		else if(yt == 26)
		{
			checkerbox%yt%.Moves := "21222930"
			checkerbox%yt%.Jumpmoves := "1719"
		}
		else if(yt == 27)
		{
			checkerbox%yt%.Moves := "22233031"
			checkerbox%yt%.Jumpmoves := "1820"
		}
		else if(yt == 28)
		{
			checkerbox%yt%.Moves := "23243132"
			checkerbox%yt%.Jumpmoves := "19"
		}
		else if(yt == 29)
		{
			checkerbox%yt%.Moves := "2526"
			checkerbox%yt%.Jumpmoves := "22"
		}
		else if(yt == 30)
		{
			checkerbox%yt%.Moves := "2627"
			checkerbox%yt%.Jumpmoves := "2123"
		}
		else if(yt == 31)
		{
			checkerbox%yt%.Moves := "2728"
			checkerbox%yt%.Jumpmoves := "2224"
		}
		else if(yt == 32)
		{
			checkerbox%yt%.Moves := "28"
			checkerbox%yt%.Jumpmoves := "23"
		}
	;	msgbox,,,% "loop 12 2 pos (" checkerbox%yt%.Position ") stat (" checkerbox%yt%.Status ") own (" checkerbox%yt%.Owner ") king (" checkerbox%yt%.Kinged ")"
		yt++
		xx++
	}
	
	;checkcheckers()
	
	return
}
checkcheckers()
{
	gh := 1
	loop, 32
	{
		
		msgbox,,,% "pos (" checkerbox%gh%.Position ") stat (" checkerbox%gh%.Status ") own (" checkerbox%gh%.Owner ") king (" checkerbox%gh%.Kinged ") ID (" checkerbox%gh%.ID ") moves (" checkerbox%gh%.Moves ") jumpmove(" checkerbox%gh%.Jumpmoves ")"
		gh++
	}
	
	return
}
showCheckersBoard()
{
	guicontrol, show, cbx1
	guicontrol, show, cbx2
	guicontrol, show, cbx3
	guicontrol, show, cbx4
	guicontrol, show, cbx5
	guicontrol, show, cbx6
	guicontrol, show, cbx7
	guicontrol, show, cbx8
	guicontrol, show, cbx9
	guicontrol, show, cbx10
	guicontrol, show, cbx11
	guicontrol, show, cbx12
	guicontrol, show, cbx13
	guicontrol, show, cbx14
	guicontrol, show, cbx15
	guicontrol, show, cbx16
	guicontrol, show, cbx17
	guicontrol, show, cbx18
	guicontrol, show, cbx19
	guicontrol, show, cbx20
	guicontrol, show, cbx21
	guicontrol, show, cbx22
	guicontrol, show, cbx23
	guicontrol, show, cbx24
	guicontrol, show, cbx25
	guicontrol, show, cbx26
	guicontrol, show, cbx27
	guicontrol, show, cbx28
	guicontrol, show, cbx29
	guicontrol, show, cbx30
	guicontrol, show, cbx31
	guicontrol, show, cbx32
	
	guicontrol, show, p1remaining
	guicontrol, show, p2remaining
	guicontrol, show, p1remainingtxt
	guicontrol, show, p2remainingtxt
	guicontrol, show, p1score
	guicontrol, show, p2score
	guicontrol, show, p1scoretxt
	guicontrol, show, p2scoretxt
	
	showPostionborders()
	showCheckersPlayerTurn()
	
	return
}
findCheckersRemaining()
{
	z := 0
	y := 0
	
	loop,32
	{
		c := checkerbox%a_index%.Owner
		if(c == 1)
			z += 1
		if(c == 2)
			y += 1
	}
	p1remainingleft := z
	p2remainingleft := y
	
	return
}
showCheckersRemaining()
{
	guicontrol, hide, p1rmainingtxt
	guicontrol,, p1remainingtxt, %p1remainingleft%
	guicontrol, show, p1remainingtxt
	
	guicontrol, hide, p2remainingtxt
	guicontrol,, p2remainingtxt, %p2remainingleft%
	guicontrol, show, p2remainingtxt
	
	return
}

findcheckerscore()
{
	z := 0
	y := 0
	
	loop,32
	{
		c := checkerbox%a_index%.Score
		if(c)
			z := c
		p1scoretotal := p1scoretotal + z
	}
}
showCheckersScore()
{
	if(p1scoretotal == "")
		p1scoretotal := 0
	if(p2scoretotal == "")
		p2scoretotal := 0
	
	guicontrol, hide, p1scoretxt
	guicontrol,, p1scoretxt, %p1scoretotal%
	guicontrol, show, p1scoretxt
	
	guicontrol, hide, p2scoretxt
	guicontrol,, p2scoretxt, %p2scoretotal%
	guicontrol, show, p2scoretxt
	
	return
}
showCheckersButtons()
{
	guicontrol, show, Creply
	guicontrol, show, exitt
	guicontrol, show, Mmenu
	
	return
}
showPostionborders()
{
	guicontrol, show, PositionBorder1
	guicontrol, show, PositionBorder2
	
	return
}
showCheckersPlayerTurn()
{
	if(Playernumber == 1)
	{
		guicontrol, hide, Position2Turn
		guicontrol, show, Position1Turn
	}
	else
	{
		guicontrol, hide, Position1Turn
		guicontrol, show, Position2Turn
	}
	return
}
showStatsCheckers()
{
	p1statstxt := Plyr1Name "'s Game Stats "
	p2statstxt := Plyr2Name "'s Game Stats "
		
	guicontrol, hide, p1stats
	guicontrol,, p1stats, %p1statstxt%
	guicontrol, show, p1stats
	
	guicontrol, hide, p2stats
	guicontrol,, p2stats, %p2statstxt%
	guicontrol, show, p2stats
	
	guicontrol, show, CTGPp1txt
	guicontrol, show, CTGWp1txt
	guicontrol, show, CTGLp1txt
	guicontrol, hide, CTGPp1
	guicontrol,, CTGPp1, %CTGamesp1%
	guicontrol, show, CTGPp1
	
	guicontrol, hide, CTGWp1
	guicontrol,, CTGWp1, %CWGamesp1%
	guicontrol, show, CTGWp1
	
	guicontrol, hide, CTGLp1
	guicontrol,, CTGLp1, %CLgamesp1%
	guicontrol, show, CTGLp1
	
		guicontrol, show, CTGPp2txt
		guicontrol, show, CTGWp2txt
		guicontrol, show, CTGLp2txt
		guicontrol, hide, CTGPp2
		guicontrol,, CTGPp2, %CTGamesp2%
		guicontrol, show, CTGPp2
		
		guicontrol, hide, CTGWp2
		guicontrol,, CTGWp2, %CWGamesp2%
		guicontrol, show, CTGWp2
		
		guicontrol, hide, CTGLp2
		guicontrol,, CTGLp2, %CLgamesp2%
		guicontrol, show, CTGLp2
	
	Gui, Show, x467 y123 h590 w478, Checkers V_%version% Game Stats
	
	return
}
showPlayerPieces()
{
	guicontrol, show, PlyrPiece1
	guicontrol, show, PlyrPiece2
	
	return
}
showCheckersGamePieces(cin)
{
	f := checkerbox%cin%.Owner
	
	if(f != false)
	{
		if(checkerbox%cin%.Kinged == 1)
		{
			if(f == 1)
				guicontrol, show, kp1pic%cin%
			else
			{
				if(f == 2)
					guicontrol, show, kp2pic%cin%
			}
		}
		else
		{
			if(f == 1)
				guicontrol, show, p1pic%cin%
			else
			{
				if(f == 2)
					guicontrol, show, p2pic%cin%
			}
		}
	}
	else
	{
		
		guicontrol, hide, kp1pic%cin%
		guicontrol, hide, kp2pic%cin%
		
		guicontrol, hide, p1pic%cin%
		guicontrol, hide, p2pic%cin%
		
	}
	
	showPlayerPieces()
	
	return
}
checkforjumpcomp(boxcombo, mode)
{
	;msgbox,,, boxcombo(%boxcombo%)
	
	str := strlen(boxcombo)
	if(mode == 1)
	{
		if(str == 8)
		{
			box1 := substr(boxcombo, 1, 2)
			;msgbox,,, box1(%box1%)
			
			if(checkerbox%box1%.Owner == 1)
				return box1
			box2 := substr(boxcombo, 3, 2) 
			;msgbox,,, box2(%box2%)
			if(checkerbox%box2%.Owner == 1)
				return box2
				
			box3 := substr(boxcombo, 5, 2)
			;;msgbox,,,box3(%box3%)
			if(checkerbox%box3%.Owner == 1)
				return box3
				
			box4 := substr(boxcombo, 7, 2)
			;msgbox,,, box4(%box4%)
			if(checkerbox%box4%.Owner == 1)
				return box4
		}
		if(str == 4)
		{
			box1 := substr(boxcombo, 1, 2)
			
			;msgbox,,, box1(%box1%)
			if(checkerbox%box1%.Owner == 1)
				return box1
			box2 := substr(boxcombo, 3, 2)
			;msgbox,,, box2(%box2%)
			if(checkerbox%box2%.Owner == 1)
				return box2
		}
		if(str == 2)
		{
			box1 := substr(boxcombo, 1, 2)
			
			;msgbox,,, box1(%box1%)
			if(checkerbox%box1%.Owner == 1)
				return box1
		}
	}
	else if(mode == 2)
	{
		if(str == 8)
		{
			box1 := substr(boxcombo, 1, 2)
			msgbox,,, box1(%box1%)
			
			if(checkerbox%box1%.Owner == 0)
				return box1
			box2 := substr(boxcombo, 3, 2) 
			msgbox,,, box2(%box2%)
			if(checkerbox%box2%.Owner == 0)
				return box2
				
			box3 := substr(boxcombo, 5, 2)
			msgbox,,,box3(%box3%)
			if(checkerbox%box3%.Owner == 0)
				return box3
				
			box4 := substr(boxcombo, 7, 2)
			msgbox,,, box4(%box4%)
			if(checkerbox%box4%.Owner == 0)
				return box4
		}
		if(str == 4)
		{
			box1 := substr(boxcombo, 1, 2)
			
			msgbox,,, box1(%box1%)
			if(checkerbox%box1%.Owner == 0)
				return box1
			box2 := substr(boxcombo, 3, 2)
			msgbox,,, box2(%box2%)
			if(checkerbox%box2%.Owner == 0)
				return box2
		}
		if(str == 2)
		{
			box1 := substr(boxcombo, 1, 2)
			
			msgbox,,, box1(%box1%)
			if(checkerbox%box1%.Owner == 0)
				return box1
		}
	}
	return 0
}
CheckSurroundingBoxes(boxcombo, controlcheck)
{
	;msgbox,,, boxcombo(%boxcombo%) controlcheck(%controlcheck%)
	
	str := strlen(boxcombo)
	if(str == 8)
	{
		box1 := substr(boxcombo, 1, 2)
		
		;msgbox,,, box1(%box1%)
		if(box1 == controlcheck)
			return 1
		box2 := substr(boxcombo, 3, 2) 
		
		;msgbox,,, box2(%box2%)
		if(box2 == controlcheck)
			return 1
		box3 := substr(boxcombo, 5, 2)
		
		;msgbox,,,box3(%box3%)
		if(box3 == controlcheck)
			return 1
		box4 := substr(boxcombo, 7, 2)
		
		;msgbox,,,  box4(%box4%)
		
		if(box4 == controlcheck)
			return 1
	}
	if(str == 4)
	{
		box1 := substr(boxcombo, 1, 2)
		
		;msgbox,,, box1(%box1%)
		if(box1 == controlcheck)
			return 1
		box2 := substr(boxcombo, 3, 2)
		
		;msgbox,,, box2(%box2%)
		if(box2 == controlcheck)
			return 1
	}
	if(str == 2)
	{
		box1 := substr(boxcombo, 1, 2)
		
		;msgbox,,, box1(%box1%)
		if(box1 == controlcheck)
			return 1
	}
	return 0
}
checkjumpmovecom(control1, control2)
{
	movechk := 0
	;msgbox,,, 1(%control1%) 2(%control2%)
	if(control1 == 10) && (control2 == 5)
	{
		movechk := 1
	}
	if(control1 == 1) && (control2 == 5)
	{
		movechk := 10
	}
	
	if(control1 == 2) && (control2 == 5)
	{
		movechk := 9
	}
	if(control1 == 9) && (control2 == 5)
	{
		movechk := 2
	}
	if(control1 == 2) && (control2 == 6)
	{
		movechk := 11
	}
	if(control1 == 11) && (control2 == 6)
	{
		movechk := 2
	}
	if(control1 == 3) && (control2 == 6)
	{
		movechk := 10
	}
	if(control1 == 10) && (control2 == 6)
	{
		movechk := 3
	}
	if(control1 == 3) && (control2 == 7)
	{
		movechk := 12
	}
	if(control1 == 12) && (control2 == 7)
	{
		movechk := 3
	}
	if(control1 == 4) && (control2 == 7)
	{
		movechk := 11
	}
	if(control1 == 11) && (control2 == 7)
	{
		movechk := 4
	}
	if(control1 == 5) && (control2 == 10)
	{
		movechk := 14
	}
	if(control1 == 14) && (control2 == 10)
	{
		movechk := 5
	}
	if(control1 == 6) && (control2 == 10)
	{
		movechk := 13
	}
	if(control1 == 13) && (control2 == 10)
	{
		movechk := 6
	}
	if(control1 == 6) && (control2 == 11)
	{
		movechk := 15
	}
	if(control1 == 15) && (control2 == 11)
	{
		movechk := 6
	}
	if(control1 == 7) && (control2 == 11)
	{
		movechk := 14
	}
	if(control1 == 14) && (control2 == 11)
	{
		movechk := 7
	}
	if(control1 == 7) && (control2 == 12)
	{	
		movechk := 16
	}
	if(control1 == 16) && (control2 == 12)
	{
		movechk := 7
	}
	if(control1 == 8) && (control2 == 12)
	{
		movechk := 15
	}
	if(control1 == 15) && (control2 == 12)
	{
		movechk := 8
	}
	if(control1 == 9) && (control2 == 13)
	{
		movechk := 18
	}
	if(control1 == 18) && (control2 == 13)
	{
		movechk := 9
	}
	if(control1 == 10) && (control2 == 13)
	{
		movechk := 17
	}
	if(control1 == 17) && (control2 == 13)
	{	
		movechk := 10
	}
	if(control1 == 10) && (control2 == 14)
	{
		movechk := 19
	}
	if(control1 == 19) && (control2 == 14)
	{
		movechk := 10
	}
	if(control1 == 11) && (control2 == 14)
	{
		movechk := 18
	}
	if(control1 == 18) && (control2 == 14)
	{
		movechk := 11
	}
	if(control1 == 11) && (control2 == 15)
	{
		movechk := 20
	}
	if(control1 == 20) && (control2 == 15)
	{
		movechk := 11
	}
	if(control1 == 12) && (control2 == 15)
	{
		movechk := 19
	}
	if(control1 == 19) && (control2 == 15)
	{
		movechk := 12
	}
	if(control1 == 13) && (control2 == 18)
	{
		movechk := 22
	}
	if(control1 == 22) && (control2 == 18)
	{
		movechk := 13
	}
	if(control1 == 14) && (control2 == 18)
	{
		movechk := 21
	}
	if(control1 == 21) && (control2 == 18)
	{
		movechk := 14
	}
	if(control1 == 14) && (control2 == 19)
	{
		movechk := 23
	}
	if(control1 == 23) && (control2 == 19)
	{
		movechk := 14
	}
	if(control1 == 15) && (control2 == 19)
	{
		movechk := 22
	}
	if(control1 == 22) && (control2 == 19)
	{
		movechk := 15
	}
	if(control1 == 15) && (control2 == 20)
	{
		movechk := 24
	}
	if(control1 == 24) && (control2 == 20)
	{
		movechk := 15
	}
	if(control1 == 16) && (control2 == 20)
	{
		movechk := 23
	}
	if(control1 == 23) && (control2 == 20)
	{
		movechk := 16
	}
	if(control1 == 17) && (control2 == 26)
	{
		movechk := 26
	}
	if(control1 == 26) && (control2 == 21)
	{
		movechk := 17
	}
	if(control1 == 18) && (control2 == 21)
	{
		movechk := 25
	}
	if(control1 == 25) && (control2 == 21)
	{
		movechk := 18
	}
	if(control1 == 18) && (control2 == 22)
	{
		movechk := 21
	}
	if(control1 == 27) && (control2 == 22)
	{
		movechk := 18
	}
	if(control1 == 19) && (control2 == 22)
	{
		movechk := 26
	}
	if(control1 == 26) && (control2 == 22)
	{
		movechk := 19
	}
	if(control1 == 19) && (control2 == 23)
	{
		movechk := 28
	}
	if(control1 == 28) && (control2 == 23)
	{
		movechk := 19
	}
	if(control1 == 20) && (control2 == 23)
	{
		movechk := 27
	}
	if(control1 == 27) && (control2 == 23)
	{
		movechk := 20
	}
	if(control1 == 21) && (control2 == 26)
	{
		movechk := 30
	}
	if(control1 == 30) && (control2 == 26)
	{
		movechk := 21
	}
	if(control1 == 22) && (control2 == 26)
	{
		movechk := 29
	}
	if(control1 == 29) && (control2 == 26)
	{
		movechk := 22
	}
	if(control1 == 22) && (control2 == 27)
	{
		movechk := 31
	}
	if(control1 == 31) && (control2 == 22)
	{
		movechk := 22
	}
	if(control1 == 30) && (control2 == 27)
	{
		movechk := 23
	}
	if(control1 == 23) && (control2 == 27)
	{
		movechk := 30
	}
	if(control1 == 23) && (control2 == 28)
	{
		movechk := 32
	}
	if(control1 == 32) && (control2 == 28)
	{
		movechk := 23
	}
	if(control1 == 31) && (control2 == 28)
	{
		movechk := 24
	}
	if(control1 == 24) && (control2 == 28)
	{
		movechk := 31
	}
	return movechk
}
CheckJumpMove(control1, control2)
{
	movechk := 0
	;msgbox,,,control1(%control1%) control2(%control2%)
	
	if(control1 == 10) && (control2 == 1)
	{
		movechk := 5
	}
	if(control1 == 1) && (control2 == 10)
	{
		movechk := 5
	}
	if(control1 == 2) && (control2 == 9)
	{
		movechk := 5
	}
	if(control1 == 9) && (control2 == 2)
	{
		movechk := 5
	}
	if(control1 == 2) && (control2 == 11)
	{
		movechk := 6
	}
	if(control1 == 11) && (control2 == 2)
	{
		movechk := 6
	}
	if(control1 == 3) && (control2 == 10)
	{
		movechk := 6
	}
	if(control1 == 10) && (control2 == 3)
	{
		movechk := 6
	}
	if(control1 == 3) && (control2 == 12)
	{
		movechk := 7
	}
	if(control1 == 12) && (control2 == 3)
	{
		movechk := 7
	}
	if(control1 == 4) && (control2 == 11)
	{
		movechk := 7
	}
	if(control1 == 11) && (control2 == 4)
	{
		movechk := 7
	}
	if(control1 == 5) && (control2 == 14)
	{
		movechk := 10
	}
	if(control1 == 14) && (control2 == 5)
	{
		movechk := 10
	}
	if(control1 == 6) && (control2 == 13)
	{
		movechk := 10
	}
	if(control1 == 13) && (control2 == 6)
	{
		movechk := 10
	}
	if(control1 == 6) && (control2 == 15)
	{
		movechk := 11
	}
	if(control1 == 15) && (control2 == 6)
	{
		movechk := 11
	}
	if(control1 == 7) && (control2 == 14)
	{
		movechk := 11
	}
	if(control1 == 14) && (control2 == 7)
	{
		movechk := 11
	}
	if(control1 == 7) && (control2 == 16)
	{	
		movechk := 12
	}
	if(control1 == 16) && (control2 == 7)
	{
		movechk := 12
	}
	if(control1 == 8) && (control2 == 15)
	{
		movechk := 12
	}
	if(control1 == 15) && (control2 == 8)
	{
		movechk := 12
	}
	if(control1 == 9) && (control2 == 18)
	{
		movechk := 13
	}
	if(control1 == 18) && (control2 == 9)
	{
		movechk := 13
	}
	if(control1 == 10) && (control2 == 17)
	{
		movechk := 13
	}
	if(control1 == 17) && (control2 == 10)
	{	
		movechk := 13
	}
	if(control1 == 10) && (control2 == 19)
	{
		movechk := 14
	}
	if(control1 == 19) && (control2 == 10)
	{
		movechk := 14
	}
	if(control1 == 11) && (control2 == 18)
	{
		movechk := 14
	}
	if(control1 == 18) && (control2 == 11)
	{
		movechk := 14
	}
	if(control1 == 11) && (control2 == 20)
	{
		movechk := 15
	}
	if(control1 == 20) && (control2 == 11)
	{
		movechk := 15
	}
	if(control1 == 12) && (control2 == 19)
	{
		movechk := 15
	}
	if(control1 == 19) && (control2 == 12)
	{
		movechk := 15
	}
	if(control1 == 13) && (control2 == 22)
	{
		movechk := 18
	}
	if(control1 == 22) && (control2 == 13)
	{
		movechk := 18
	}
	if(control1 == 14) && (control2 == 21)
	{
		movechk := 18
	}
	if(control1 == 21) && (control2 == 14)
	{
		movechk := 18
	}
	if(control1 == 14) && (control2 == 23)
	{
		movechk := 19
	}
	if(control1 == 23) && (control2 == 14)
	{
		movechk := 19
	}
	if(control1 == 15) && (control2 == 22)
	{
		movechk := 19
	}
	if(control1 == 22) && (control2 == 15)
	{
		movechk := 19
	}
	if(control1 == 15) && (control2 == 24)
	{
		movechk := 20
	}
	if(control1 == 24) && (control2 == 15)
	{
		movechk := 20
	}
	if(control1 == 16) && (control2 == 23)
	{
		movechk := 20
	}
	if(control1 == 23) && (control2 == 16)
	{
		movechk := 20
	}
	if(control1 == 17) && (control2 == 26)
	{
		movechk := 21
	}
	if(control1 == 26) && (control2 == 17)
	{
		movechk := 21
	}
	if(control1 == 18) && (control2 == 25)
	{
		movechk := 21
	}
	if(control1 == 25) && (control2 == 18)
	{
		movechk := 21
	}
	if(control1 == 18) && (control2 == 27)
	{
		movechk := 22
	}
	if(control1 == 27) && (control2 == 18)
	{
		movechk := 22
	}
	if(control1 == 19) && (control2 == 26)
	{
		movechk := 22
	}
	if(control1 == 26) && (control2 == 19)
	{
		movechk := 22
	}
	if(control1 == 19) && (control2 == 28)
	{
		movechk := 23
	}
	if(control1 == 28) && (control2 == 19)
	{
		movechk := 23
	}
	if(control1 == 20) && (control2 == 27)
	{
		movechk := 23
	}
	if(control1 == 27) && (control2 == 20)
	{
		movechk := 23
	}
	if(control1 == 21) && (control2 == 30)
	{
		movechk := 26
	}
	if(control1 == 30) && (control2 == 21)
	{
		movechk := 26
	}
	if(control1 == 22) && (control2 == 29)
	{
		movechk := 26
	}
	if(control1 == 29) && (control2 == 22)
	{
		movechk := 26
	}
	if(control1 == 22) && (control2 == 31)
	{
		movechk := 27
	}
	if(control1 == 31) && (control2 == 22)
	{
		movechk := 27
	}
	if(control1 == 30) && (control2 == 23)
	{
		movechk := 27
	}
	if(control1 == 23) && (control2 == 30)
	{
		movechk := 27
	}
	if(control1 == 23) && (control2 == 32)
	{
		movechk := 28
	}
	if(control1 == 32) && (control2 == 23)
	{
		movechk := 28
	}
	if(control1 == 31) && (control2 == 24)
	{
		movechk := 28
	}
	if(control1 == 24) && (control2 == 31)
	{
		movechk := 28
	}
	return movechk
}
getcboxpostion(cntrl)
{
	x := 1
	
	loop 32
	{
		if(checkerbox%x%.ID == cntrl) && (checkerbox%x%.Owner == 2)
		{
			return checkerbox%x%.Position
		}
		x++
	}
	
	return 0
}
CheckBoxOwner(thiscntrl)
{
	if(thiscntrl == -1)
		return thiscntrl
	b := checkerbox%thiscntrl%.Owner
	;msgbox,,,%   "b (" b ") thiscntrl (" thiscntrl ") (" checkerbox%thiscntrl%.Position ")"
	return b
}
FindJumpMoves(oxes)
{
	return checkerbox%oxes%.Jumpmoves
}
FindBoxMoves(boxes)
{
	return checkerbox%boxes%.Moves
}
CheckNextJump(input) 
{
	
	checker :=
	
	if(PlayerNumber == 1)
		checker := 2
	else
		checker := 1
	;msgbox,,, input(%input%) checker(%checker%)
	
	if(input == 1)
	{
		in1 := 0
		in1 := input + 9
		if(checkerbox%in1%.Owner == 0)
		{
			in1 := in1 - 5
			if(checkerbox%in1%.Owner == checker)
				return 10
		}
	}
	if(input == 2)
	{
		in2 := 0
		in2 := input + 7
		if(checkerbox%in2%.Owner == 0)
		{
			in2 := in2 - 4
			if(checkerbox%in2%.Owner == checker)
				return 9
		}
		in2 := input + 9
		if(checkerbox%in2%.Owner == 0)
		{
			in2 := in2 - 5
			if(checkerbox%in2%.Owner == checker)
				return 11
		}
	}
	if(input == 3)
	{
		in3 := 0
		in3 := input + 7
		if(checkerbox%in3%.Owner == 0)
		{
			in3 := in3 - 4
			if(checkerbox%in3%.Owner == checker)
				return 10
		}
		in3 := input + 9
		if(checkerbox%in3%.Owner == 0)
		{
			in3 := in3 - 5
			if(checkerbox%in3%.Owner == checker)
				return 12
		}
	}
	if(input == 4)
	{
		in4 := 0
		in4 := input + 7
		if(checkerbox%in4%.Owner == 0)
		{
			in4 := in4 - 4
			if(checkerbox%in4%.Owner == checker)
				return 11
		}
	}
	if(input == 5)
	{
		in5 := 0
		in5 := input + 9
	
		if(checkerbox%in5%.Owner == 0)
		{
			in5 := in5 - 4
			if(checkerbox%in5%.Owner == checker)
				return 14
		}
	}
	if(input == 6)
	{
		in6 := 0
		in6 := input + 7
		if(checkerbox%in6%.Owner == 0)
		{
			in6 := in6 - 3
			if(checkerbox%in6%.Owner == checker)
				return 13
		}
		in6 := input + 9
		if(checkerbox%in6%.Owner == 0)
		{
			in6 := in6 - 4
			if(checkerbox%in6%.Owner == checker)
				return 15
		}
	}
	if(input == 7)
	{
		in7 := 0
		in7 := input + 7
		if(checkerbox%in7%.Owner == 0)
		{
			in7 := in7 - 3
			if(checkerbox%in7%.Owner == checker)
				return 14
		}
		in7 := input + 9
		if(checkerbox%in7%.Owner == 0)
		{
			in7 := in7 - 4
			if(checkerbox%in7%.Owner == checker)
				return 16
		}
	}
	if(input == 8)
	{
		
		in8 := 0
		in8 := input + 7
		if(checkerbox%in8%.Owner == 0)
		{
			in7 := in7 - 3
			if(checkerbox%in8%.Owner == checker)
				return 15
		}
	}
	if(input == 9)
	{
		in9 := 0
		in9 := input + 9
		if(checkerbox%in9%.Owner == 0)
		{
			in9 := in9 - 5
			if(checkerbox%in9%.Owner == checker)
				return 18
		}
		in9 := input - 7
		if(checkerbox%in9%.Owner == 0)
		{
			in9 := in9 + 3
			if(checkerbox%in9%.Owner == checker)
				return 2
		}
	}
	if(input == 10)
	{
		in10 := 0
		in10 := input + 9
		if(checkerbox%in10%.Owner == 0)
		{
			in10 := in10 - 5
			if(checkerbox%in10%.Owner == checker)
				return 19
		}
		in10 := input + 7
		if(checkerbox%in10%.Owner == 0)
		{
			in10 := in10 - 4
			if(checkerbox%in10%.Owner == checker)
				return 17
		}
		in10 := input - 9
		if(checkerbox%in10%.Owner == 0)
		{
			in10 := in10 + 4
			if(checkerbox%in10%.Owner == checker)
				return 1
		}
		in10 := input - 7
		if(checkerbox%in10%.Owner == 0)
		{
			in10 := in10 + 3
			if(checkerbox%in10%.Owner == checker)
				return 3
		}
	}
	if(input == 11)
	{
		in11 := 0
		in11 := input + 7
		if(checkerbox%in11%.Owner == 0)
		{
			in11 := in11 - 4
			if(checkerbox%in11%.Owner == checker)
				return 18
		}
		in11 := input + 9
		if(checkerbox%in11%.Owner == 0)
		{
			in11 := in11 - 5
			if(checkerbox%in11%.Owner == checker)
				return 20
		}
		in11 := input - 9
		if(checkerbox%in11%.Owner == 0)
		{
			in11 := in11 + 4
			if(checkerbox%in11%.Owner == checker)
				return 2
		}
		in11 := input - 7
		if(checkerbox%in11%.Owner == 0)
		{
			in11 := in11 + 3
			if(checkerbox%in11%.Owner == checker)
				return 4
		}
	}
	if(input == 12)
	{
		in12 := 0
		in12 := input + 7
		if(checkerbox%in12%.Owner == 0)
		{
			in12 := in12 - 4
			if(checkerbox%in12%.Owner == checker)
				return 19
		}
		in12 := input - 9
		if(checkerbox%in12%.Owner == 0)
		{
			in12 := in12 + 4
			if(checkerbox%in12%.Owner == checker)
				return 3
		}
	}
	if(input == 13)
	{
		in13 := 0
		in13 := input + 9
		if(checkerbox%in13%.Owner == 0)
		{
			in13 := in13 - 4
			if(checkerbox%in13%.Owner == checker)
				return 22
		}
		in13 := input - 7
		if(checkerbox%in13%.Owner == 0)
		{
			in13 := in13 + 4
			if(checkerbox%in13%.Owner == checker)
				return 6
		}
	}
	if(input == 14)
	{
		in14 := 0
		in14 := input + 7
		if(checkerbox%in14%.Owner == 0)
		{
			in14 := in14 - 3
			if(checkerbox%in14%.Owner == checker)
			{
				return 21
			}
		}
		in14 := input + 9
		if(checkerbox%in14%.Owner == 0)
		{
			in14 := in14 - 4
			if(checkerbox%in14%.Owner == checker)
			{
				return 23
			}
		}
		in14 := input - 9
		if(checkerbox%in14%.Owner == 0)
		{
			in14 := in14 + 5
			if(checkerbox%in14%.Owner == checker)
			{
				return 5
			}
		}
		in14 := input - 7 
		if(checkerbox%in14%.Owner == 0)
		{
			in14 := in14 + 4
			if(checkerbox%in14%.Owner == checker)
			{
				return 7
			}
		}
	}
	if(input == 15)
	{
		in15 := 0
		in15 := input + 7
		if(checkerbox%in15%.Owner == 0)
		{
			in15 := in15 - 3
			if(checkerbox%in15%.Owner == checker)
			{
				return 22
			}
		}
		in15 := input + 9
		if(checkerbox%in15%.Owner == 0)
		{
			in15 := in15 - 4
			if(checkerbox%in15%.Owner == checker)
			{
				return 24
			}
		}
		in15 := input - 9
		if(checkerbox%in15%.Owner == 0)
		{
			in15 := in15 + 5
			if(checkerbox%in15%.Owner == checker)
			{
				return 6
			}
		}
		in15 := input - 7
		if(checkerbox%in15%.Owner == 0)
		{
			in15 := in15 + 5
			if(checkerbox%in15%.Owner == checker)
			{
				return 8
			}
		}
	}
	if(input == 16)
	{
		in16 := 0
		in16 := input + 7
		if(checkerbox%in16%.Owner == 0)
		{
			in16 := in16 - 3
			if(checkerbox%in16%.Owner == checker)
				return 23
		}
		in16 := input - 9
		if(checkerbox%in16%.Owner == 0)
		{
			in16 := in16 + 5
			if(checkerbox%in16%.Owner == checker)
				return 7
		}
	}
	if(input == 17)
	{
		in17 := 0
		in17 := input + 9
		if(checkerbox%in17%.Owner == 0)
		{
			in17 := in17 - 5
			if(checkerbox%in17%.Owner == checker)
			{
				return 26
			}
		}
		in17 := input - 7
		if(checkerbox%in17%.Owner == 0)
		{
			in17 := in17 + 3
			if(checkerbox%in17%.Owner == checker)
			{
				return 10
			}
		}
	}
	if(input == 18)
	{
		in18 := 0
		in18 := input + 7
		if(checkerbox%in18%.Owner == 0)
		{
			in18 := in18 - 4
			if(checkerbox%in18%.Owner == checker)
			{
				return 25
			}
		}
		in18 := input + 9
		if(checkerbox%in18%.Owner == 0)
		{
			in18 := in18 - 5
			if(checkerbox%in18%.Owner == checker)
			{
				return 27
			}
		}
		in18 := input - 9
		if(checkerbox%in18%.Owner == 0)
		{
			in18 := in18 + 4
			if(checkerbox%in18%.Owner == checker)
			{
				return 9
			}
		}
		in18 := input - 7
		if(checkerbox%in18%.Owner == 0)
		{
			in18 := in18 + 3
			if(checkerbox%in18%.Owner == checker)
			{
				return 11
			}
		}
	}
	if(input == 19)
	{
		in19 := 0
		in19 := input + 7
		if(checkerbox%in19%.Owner == 0)
		{
			in19 := in19 - 4
			if(checkerbox%in19%.Owner == checker)
			{
				return 26
			}
		}
		in19 := input + 9
		if(checkerbox%in19%.Owner == 0)
		{
			in19 := in19 - 5
			if(checkerbox%in19%.Owner == checker)
			{
				return 28
			}
		}
		in19 := input - 9
		if(checkerbox%in19%.Owner == 0)
		{
			in19 := in19 + 4
			if(checkerbox%in19%.Owner == checker)
			{
				return 10
			}
		}
		in19 := input - 7
		if(checkerbox%in19%.Owner == 0)
		{
			in19 := in19 + 3
			if(checkerbox%in19%.Owner == checker)
			{
				return 12
			}
		}
	}
	if(input == 20)
	{
		in20 := 0
		in20 := input + 7
		if(checkerbox%in20%.Owner == 0)
		{
			in20 := in20 - 4
			if(checkerbox%in20%.Owner == checker)
			{
				return 27
			}
		}
		in20 := input - 9
		if(checkerbox%in20%.Owner == 0)
		{
			in20 := in20 + 4
			if(checkerbox%in20%.Owner == checker)
			{
				return 11
			}
		}
	}
	if(input == 21)
	{
		in21 := 0
		in21 := input + 9
		if(checkerbox%in21%.Owner == 0)
		{
			in21 := in21 - 4
			if(checkerbox%in21%.Owner == checker)
			{
				return 30
			}
		}
		in21 := input - 7
		if(checkerbox%in21%.Owner == 0)
		{
			in21 := in21 + 4
			if(checkerbox%in21%.Owner == checker)
			{
				return 14
			}
		}
	}
	if(input == 22)
	{
		in22 := 0
		in22 := input + 7
		msgbox,,,% "ownin22-1(" checkerbox%in22%.Owner ") in22(" in22 ")" 
		if(checkerbox%in22%.Owner == 0)
		{
			in22 := in22 - 3
			msgbox,,,% "ownin22-2(" checkerbox%in22%.Owner ") in22(" in22 ")" 
			if(checkerbox%in22%.Owner == checker)
			{
				return 29
			}
		}
		in22 := input + 9
		msgbox,,,% "own29-3(" checkerbox%in22%.Owner ") aa(" in22 ")"
		if(checkerbox%in22%.Owner == 0)
		{
			in22 := in22 - 4
			msgbox,,,% "own29-4(" checkerbox%in22%.Owner ") aa(" in22 ")"
			if(checkerbox%in22%.Owner == checker)
			{
				return 31
			}
		}
		in22 := input - 9
		if(checkerbox%in22%.Owner == 0)
		{
			in22 := in22 + 5
			if(checkerbox%in22%.Owner == checker)
			{
				return 13
			}
		}
		in22 := input - 7
		if(checkerbox%in22%.Owner == 0)
		{
			in22 := in22 + 4
			if(checkerbox%in22%.Owner == checker)
			{
				return 15
			}
		}
	}
	if(input == 23) 
	{
		in23 := 0
		in23 := input + 7
		if(checkerbox%in23%.Owner == 0)
		{
			in23 := in23 - 3
			if(checkerbox%in23%.Owner == checker)
				return 30
		}
		in23  := input + 9
		if(checkerbox%in23%.Owner == 0)
		{
			in23 := in23 - 4
			if(checkerbox%in23%.Owner == checker)
				return 32
		}
		in23 := input - 9
		if(checkerbox%in23%.Owner == 0)
		{
			in23 := in23 + 5
			if(checkerbox%in23%.Owner == checker)
				return 14
		}
		in23 := input - 7
		if(checkerbox%in23%.Owner == 0)
		{
			in23 := in23 + 4
			if(checkerbox%in23%.Owner == checker)
				return 16
		}
	}
	if(input == 24)
	{
		in24 := 0
		in24 := input + 7
		if(checkerbox%in24%.Owner == 0)
		{
			in24 := in24 - 3
			if(checkerbox%in24%.Owner == checker)
			{
				return 31
			}
		}
		in24 := input - 9
		if(checkerbox%in24%.Owner == 0)
		{
			in24 := in24 + 5
			if(checkerbox%in24%.Owner == checker)
			{
				return 15
			}
		}
	}
	if(input == 25)
	{
		in25 := 0
		in25 := input - 7
		if(checkerbox%in25%.Owner == 0)
		{
			in25 := in25 + 3
			if(checkerbox%in25%.Owner == checker)
			{
				return 18
			}
		}
	}
	if(input == 26)
	{
		in26 := 0
		in26 := input - 9
		if(checkerbox%in26%.Owner == 0)
		{
			in26 := in26 + 4
			if(checkerbox%in26%.Owner == checker)
			{
				return 17
			}
		}
		in26 := input - 7
		if(checkerbox%in26%.Owner == 0)
		{
			in26 := in26 + 3
			if(checkerbox%in26%.Owner == checker)
			{
				return 19
			}
		}
	}
	if(input == 27)
	{
		in27 := 0
		in27 := input - 9
		if(checkerbox%in27%.Owner == 0)
		{
			in27 := in27 + 4
			if(checkerbox%in27%.Owner == checker)
			{
				return 18
			}
		}
		in27 := input - 7
		if(checkerbox%in27%.Owner == 0)
		{
			in27 := in27 + 3
			if(checkerbox%in27%.Owner == checker)
			{
				return 20
			}
		}
	}
	if(input == 28)
	{
		in28 := 0
		in28 := input - 9
		if(checkerbox%in28%.Owner == 0)
		{
			in28 := in28 + 4
			if(checkerbox%in28%.Owner == checker)
			{
				return 19
			}
		}
	}
	if(input == 29)
	{
		in29 := 0
		in29 := input - 7
		if(checkerbox%in29%.Owner == 0)
		{
			in29 := in29 + 4
			if(checkerbox%in29%.Owner == checker)
			{
				return 22
			}
		}
	}
	if(input == 30)
	{
		in30 := 0
		in30 := input - 9
		if(checkerbox%in30%.Owner == 0)
		{
			in30 := in30 + 5
			if(checkerbox%in30%.Owner == checker)
			{
				return 21
			}
		}
		in30 := input - 7
		if(checkerbox%in30%.Owner == 0)
		{
			in30 := in30 + 4
			if(checkerbox%in30%.Owner == checker)
			{
				return 23
			}
		}
	}
	if(input == 31)
	{
		in31 := 0
		in31 := input - 9
		if(checkerbox%in31%.Owner == 0)
		{
			in31 := in31 + 5
			if(checkerbox%in31%.Owner == checker)
			{
				return 22
			}
		}
		in31 := input - 7
		if(checkerbox%in31%.Owner == 0)
		{
			in31 := in31 + 4
			if(checkerbox%in31% == checker)
			{
				return 24
			}
		}
	}
	if(input == 32)
	{
		in32 := 0
		in32 := input - 9
		if(checkerbox%in32%.Owner == 0)
		{
			in32 := in32 + 5
			if(checkerbox%in32%.Owner == checker)
			{
				return 23
			}
		}
	}
	return 0
}
findBoxKing(player)
{
	;msgbox,,, player(%player%)
	if(player == 1)
	{
		if(cbx29 == player)
			return 29
		if(cbx30 == player)
			return 30
		if(cbx31 == player)
			return 31
		if(cbx32 == player)
			return 32
	}
	else
	{
		if(cbx1 == player)
			return 1
		if(cbx2 == player)
			return 2
		if(cbx3 == player)
			return 3
		if(cbx4 == player)
			return 4
	}
	return 0
}
CheckBoxKing(acontrol)
{
	
	
	return checkerbox%acontrol%.Kinged
}
FindControl(acontrol)    
{
	;msgbox,,,control (%acontrol%) || (acontrol == "Static")
	
	if(acontrol == "Button22")
		return 0
		
	if(acontrol == "Static27") || (acontrol == "Static28") || (acontrol == "Button23") || (acontrol == "Static93") || (acontrol == "Static94")
		return 1	
	if(acontrol == "Static29") || (acontrol == "Static30") || (acontrol == "Button24") || (acontrol == "Static95") || (acontrol == "Static96")
		return 2
	if(acontrol == "Static31") || (acontrol == "Static32") || (acontrol == "Button25") || (acontrol == "Static97") || (acontrol == "Static98")
		return 3
	if(acontrol == "Static33") || (acontrol == "Static34") || (acontrol == "Button26") || (acontrol == "Static99") || (acontrol == "Static100")
		return 4
	if(acontrol == "Static35") || (acontrol == "Static36") || (acontrol == "Button27") || (acontrol == "Static101") || (acontrol == "Static102")
		return 5
	if(acontrol == "Static37") || (acontrol == "Static38") || (acontrol == "Button28") || (acontrol == "Static103") || (acontrol == "Static104")
		return 6
	if(acontrol == "Static39") || (acontrol == "Static40") || (acontrol == "Button29") || (acontrol == "Static105") || (acontrol == "Static106")
		return 7
	if(acontrol == "Static41") || (acontrol == "Static42") || (acontrol == "Button30") || (acontrol == "Static107") || (acontrol == "Static108")
		return 8
	if(acontrol == "Static43") || (acontrol == "Static44") || (acontrol == "Button31") || (acontrol == "Static109") || (acontrol == "Static110")
		return 9
	if(acontrol == "Static45") || (acontrol == "Static46") || (acontrol == "Button32") || (acontrol == "Static111") || (acontrol == "Static112")
		return 10
	if(acontrol == "Static47") || (acontrol == "Static48") || (acontrol == "Button33") || (acontrol == "Static113") || (acontrol == "Static114")
		return 11
	if(acontrol == "Static49") || (acontrol == "Static50") || (acontrol == "Button34") || (acontrol == "Static115") || (acontrol == "Static116")
		return 12
	if(acontrol == "Static51") || (acontrol == "Static52") || (acontrol == "Button35") || (acontrol == "Static117") || (acontrol == "Static118")
		return 13
	if(acontrol == "Static53") || (acontrol == "Static54") || (acontrol == "Button36") || (acontrol == "Static119") || (acontrol == "Static120")
		return 14
	if(acontrol == "Static55") || (acontrol == "Static56") || (acontrol == "Button37") || (acontrol == "Static121") || (acontrol == "Static122")
		return 15
	if(acontrol == "Static57") || (acontrol == "Static58") || (acontrol == "Button38") || (acontrol == "Static123") || (acontrol == "Static124")
		return 16
	if(acontrol == "Static59") || (acontrol == "Static60") || (acontrol == "Button39") || (acontrol == "Static125") || (acontrol == "Static126")
		return 17
	if(acontrol == "Static61") || (acontrol == "Static62") || (acontrol == "Button40") || (acontrol == "Static127") || (acontrol == "Static128")
		return 18
	if(acontrol == "Static63") || (acontrol == "Static64") || (acontrol == "Button41") || (acontrol == "Static129") || (acontrol == "Static130")
		return 19
	if(acontrol == "Static65") || (acontrol == "Static66") || (acontrol == "Button42") || (acontrol == "Static131") || (acontrol == "Static132")
		return 20
	if(acontrol == "Static67") || (acontrol == "Static68") || (acontrol == "Button43") || (acontrol == "Static133") || (acontrol == "Static134")
		return 21
	if(acontrol == "Static69") || (acontrol == "Static70") || (acontrol == "Button44") || (acontrol == "Static135") || (acontrol == "Static136")
		return 22
	if(acontrol == "Static71") || (acontrol == "Static72") || (acontrol == "Button45") || (acontrol == "Static137") || (acontrol == "Static138")
		return 23
	if(acontrol == "Static73") || (acontrol == "Static74") || (acontrol == "Button46") || (acontrol == "Static139") || (acontrol == "Static140")
		return 24
	if(acontrol == "Static75") || (acontrol == "Static76") || (acontrol == "Button47") || (acontrol == "Static141") || (acontrol == "Static142")
		return 25
	if(acontrol == "Static77") || (acontrol == "Static78") || (acontrol == "Button48") || (acontrol == "Static143") || (acontrol == "Static144")
		return 26
	if(acontrol == "Static79") || (acontrol == "Static80") || (acontrol == "Button49") || (acontrol == "Static145") || (acontrol == "Static146")
		return 27
	if(acontrol == "Static81") || (acontrol == "Static82") || (acontrol == "Button50") || (acontrol == "Static147") || (acontrol == "Static148")
		return 28
	if(acontrol == "Static83") || (acontrol == "Static84") || (acontrol == "Button51") || (acontrol == "Static149") || (acontrol == "Static150")
		return 29
	if(acontrol == "Static85") || (acontrol == "Static86") || (acontrol == "Button52") || (acontrol == "Static151") || (acontrol == "Static152")
		return 30
	if(acontrol == "Static87") || (acontrol == "Static88") || (acontrol == "Button53") || (acontrol == "Static153") || (acontrol == "Static154")
		return 31
	if(acontrol == "Static89") || (acontrol == "Static90") || (acontrol == "Button54") || (acontrol == "Static155") || (acontrol == "Static156")
		return 32
}
CheckPossMoves(cntlin1, cntlin2)
{
	d := 0
	
	msgbox,,, in here
	if(checkerbox%cntlin2%.Kinged == 1)
	{
		if(checkerbox%cntlin1%.Owner == 0)
		{
			
		}
	}
	else
	{
		if(checkerbox%cntlin1%.Owner == 0)
		{
			msgbox,,, here poss owner 0 
			d++
		}
	}
	return d
}
;    -----------------------------------    War    ---------------------------------------------------------

checkPlyrsHands(RanIn)
{
	loop, 
	{
		xx := card%RanIn%.Used
		zz := card%RanIn%.PHand
		if(xx == false)
		{
			if(zz == PlayerNumber)
				return true
		}
		if(a_index == 1000)
		{
			ResetPlyrsCards()
		}
	}
	
	return false
}
ResetPlyrsCards()
{
	loop, 52
	{
		card%a_index%.Used := false
	}
	return
}
showWarBoard()
{
	guicontrol, show, WarPlyrBorder1
	guicontrol, show, WarPlyrBorder2
	showWarPlyrTurn()
	showPlayercardsleft()
	showPlayercardsleftnum()
	
	return
}
showStartWarButtons()
{
	if(PlayerNumber == 1)
		guicontrol, show, P1But
	else
		guicontrol, show, P2But
	
	return
}
showStartWarPics()
{
	guicontrol, show, pic4p1war
	guicontrol, show, pic4p2war
	
	return
}
showWarPlyrTurn()
{
	if(GameType == 2)
	{
		if(PlayerNumber == 1)
		{
			guicontrol, hide, WarPl2Turn
			guicontrol,, WarPl2Turn, % Plyr1Name " 's Turn "
			guicontrol, show, WarPl2Turn
		}
		else
		{
			guicontrol, hide, WarPl1Turn
			guicontrol,, WarPl1Turn, % Plyr2Name " 's Turn "
			guicontrol, show, WarPl1Turn
		}
	}
	else
	{
		if(PlayerNumber == 1)
			guicontrol, show, WarPl1Turn
		else
			guicontrol, show, WarPl2Turn
	}
}
showPlayercardsleft()
{
	pos1lefttxt := Plyr1Name "'s Total Cards : "
	
	pos2lefttxt := Plyr2Name "'s Total Cards : "

	guicontrol, hide, pos1cardsleft
	guicontrol,, pos1cardsleft, %pos1lefttxt%
	guicontrol, show, pos1cardsleft
	
	guicontrol, hide, pos2cardsleft
	guicontrol,, pos2cardsleft, %pos2lefttxt%
	guicontrol, show, pos2cardsleft
	
	return
}
findplayercardsleft()
{
	y := 0
	z := 0
	m := 1
	loop, 52
	{
		xx := card%m%.PHand
		if(xx == 1)
			z += 1
		else
			y += 1
		m++
	}
	pos1totalcardstxt := z
	pos2totalcardstxt := y
	;msgbox,,,1(%pos1totalcardstxt%) 2(%pos2totalcardstxt%)
	return
}
showPlayercardsleftnum()
{
	guicontrol, hide, pos1totalcards
	guicontrol,, pos1totalcards, %pos1totalcardstxt% 
	guicontrol, show, pos1totalcards
	
	guicontrol, hide, pos2totalcards
	guicontrol,, pos2totalcards, %pos2totalcardstxt%
	guicontrol, show, pos2totalcards
	
	return
}
showWarStats()
{
	p1statstxt := Plyr1Name "'s Game Stats "
	p2statstxt := Plyr2Name "'s Game Stats "
		
	guicontrol, hide, p1stats
	guicontrol,, p1stats, %p1statstxt%
	guicontrol, show, p1stats
	
	guicontrol, hide, p2stats
	guicontrol,, p2stats, %p2statstxt%
	guicontrol, show, p2stats
	
	guicontrol, show, WarTGPp1txt
	guicontrol, show, WarTGWp1txt
	guicontrol, show, WarTGLp1txt
	guicontrol, hide, WarTGPp1
	guicontrol,, WarTGPp1, %WarTGamesp1%
	guicontrol, show, WarTGPp1
	
	guicontrol, hide, WarTGWp1
	guicontrol,, WarTGWp1, %WarWGamesp1%
	guicontrol, show, WarTGWp1
	
	guicontrol, hide, WarTGLp1
	guicontrol,, WarTGLp1, %WarLgamesp1%
	guicontrol, show, WarTGLp1
	
	guicontrol, show, WarTGPp2txt
	guicontrol, show, WarTGWp2txt
	guicontrol, show, WarTGLp2txt
	guicontrol, hide, WarTGPp2
	guicontrol,, WarTGPp2, %WarTGamesp2%
	guicontrol, show, WarTGPp2
		
	guicontrol, hide, WarTGWp2
	guicontrol,, WarTGWp2, %WarWGamesp2%
	guicontrol, show, WarTGWp2
		
	guicontrol, hide, WarTGLp2
	guicontrol,, WarTGLp2, %WarLgamesp2%
	guicontrol, show, WarTGLp2
	
	Gui, Show, x467 y123 h590 w478, War V_%version% Game Stats
	
	return 
}
warrandomnumber(innum)
{
	xx :=
	
	random, xx, 1, 52
	
	return xx
}
checkWarRandom(input)
{
	fg := number%input%
	;msgbox,,, fg (%fg%)
	if(fg == true)
	{
		return true
	}
	return false
}
getcardinfo()
{
	ka := 1
	loop, 52
	{
		kk := card%ka%.Position
		ll := card%ka%.RanNum
		mm := Card%ka%.Name
		nn := card%ka%.Value
		oo := card%ka%.PHand
		pp := card%ka%.Pic
		
		msgbox,,, card%ka%( (%kk%)(%ll%) (%mm%) (%nn%) (%oo%) (%pp%) )
		
		ka += 1
	}
	return
}
ShuffleNDeal()
{
	;msgbox,,, player(%Plyr2First%)
	dd := 1
	plyr :=
	
	if(GameType == 1)
		plyr := 1
	else
		plyr := 2
	;msgbox,,,plyr(%GameType%)
	loop, 
	{
		tt := warrandomnumber(dd)
		;msgbox,,, tt(%tt%)
		
		
		z := checkWarRandom(tt)
		;msgbox,,, z(%z%)
		
		if(z == false)
		{
			card%dd%.Used := false
			a := card%dd%.Position := dd
			;msgbox,,,a(%a%)
			b := card%dd%.RanNum := tt
			;msgbox,,,b(%b%)
			c := card%dd%.Name := findcardname(tt)
			;msgbox,,,c(%c%)
			d := card%dd%.Value := findcardvalue(c)
			;msgbox,,,d(%d%)
			e := card%dd%.Pic:= findcardpic(tt)
			;msgbox,,,e(%e%)
			f := card%dd%.PHand := plyr
			plyr := switchposdeal(plyr)
			;msgbox,,,f(%plyr%)
			number%tt% := true
			dd ++
		}
		else
		{
		
			if((number1 == true) && (number2 == true) && (number3 == true) && (number4 == true) && (number5 == true) && (number6 == true)
			&& (number7 == true) && (number8 == true) && (number9 == true) && (number10 == true) && (number11 == true) && (number12 == true)
			&& (number13 == true) && (number14 == true) && (number15 == true) && (number16 == true) && (number17 == true) && (number18 == true)
			&& (number19 == true) && (number20 == true) && (number21 == true) && (number22 == true) && (number23 == true) && (number24 == true)
			&& (number25 == true) && (number26 == true) && (number27 == true) && (number28 == true) && (number29 == true) && (number30 == true)
			&& (number31 == true) && (number32 == true) && (number33 == true) && (number34 == true) && (number35 == true) && (number36 == true)
			&& (number37 == true) && (number38 == true) && (number39 == true) && (number40 == true) && (number41 == true) && (number42 == true)
			&& (number43 == true) && (number44 == true) && (number45 == true) && (number46 == true) && (number47 == true) && (number48 == true)
			&& (number49 == true) && (number50 == true) && (number51 == true) && (number52 == true))
			{
				break
			}
		}
	}
	;getcardinfo()
	return
}
switchposdeal(dealswitch)
{
	if(dealswitch == 1)
		dealswitch := 2
	else
		dealswitch := 1
		
	return dealswitch
}
ResetCards()
{
	sleep 1000
	if(GameType == 1)
	{
		guicontrol, hide, pic4p1war
		guicontrol,, pic4p1war, %warpic%
		guicontrol, show, pic4p1war
		sleep 500
		guicontrol, hide, pic4p2war
		guicontrol,, pic4p2war, %warpic%
		guicontrol, show, pic4p2war
	}
	else
	{
		guicontrol, hide, pic4p2war
		guicontrol,, pic4p2war, %warpic%
		guicontrol, show, pic4p2war
		sleep 500
		guicontrol, hide, pic4p1war
		guicontrol,, pic4p1war, %warpic%
		guicontrol, show, pic4p1war
	}
	
	return
}
findcardname(aa)
{
	ret :=
	if(aa == 1)
	{
		ret := "1clubs"
	}
	if(aa == 2)
	{
		ret := "2clubs"
	}
	if(aa == 3)
	{
		ret := "3clubs"
	}
	if(aa == 4)
	{
		ret := "4clubs"
	}
	if(aa == 5)
	{
		ret := "5clubs"
	}
	if(aa == 6)
	{
		ret := "6clubs"
	}
	if(aa == 7)
	{
		ret := "7clubs"
	}
	if(aa == 8)
	{
		ret := "8clubs"
	}
	if(aa == 9)
	{
		ret := "9clubs"
	}
	if(aa == 10)
	{
		ret := "10clubs"
	}
	if(aa == 11)
	{
		ret := "11clubs"
	}
	if(aa == 12)
	{
		ret := "12clubs"
	}
	if(aa == 13)
	{
		ret := "13clubs"
	}
	if(aa == 14)
	{
		ret := "1hearts"
	}
	if(aa == 15)
	{
		ret := "2hearts"
	}
	if(aa == 16)
	{
		ret := "3hearts"
	}
	if(aa == 17)
	{
		ret := "4hearts"
	}
	if(aa == 18)
	{
		ret := "5hearts"
	}
	if(aa == 19)
	{
		ret := "6hearts"
	}
	if(aa == 20)
	{
		ret := "7hearts"
	}
	if(aa == 21)
	{
		ret := "8hearts"
	}
	if(aa == 22)
	{
		ret := "9hearts"
	}
	if(aa == 23)
	{
		ret := "10hearts"
	}
	if(aa == 24)
	{
		ret := "11hearts"
	}
	if(aa == 25)
	{
		ret := "12hearts"
	}
	if(aa == 26)
	{
		ret := "13hearts"
	}
	if(aa == 27)
	{
		ret := "1spades"
	}
	if(aa == 28)
	{
		ret := "2spades"
	}
	if(aa == 29)
	{
		ret := "3spades"
	}
	if(aa == 30)
	{
		ret := "4spades"
	}
	if(aa == 31)
	{
		ret := "5spades"
	}
	if(aa == 32)
	{
		ret := "6spades"
	}
	if(aa == 33)
	{
		ret := "7spades"
	}
	if(aa == 34)
	{
		ret := "8spades"
	}
	if(aa == 35)
	{
		ret := "9spades"
	}
	if(aa == 36)
	{
		ret := "10spades"
	}
	if(aa == 37)
	{
		ret := "11spades"
	}
	if(aa == 38)
	{
		ret := "12spades"
	}
	if(aa == 39)
	{
		ret := "13spades"
	}
	if(aa == 40)
	{
		ret := "1diamonds"
	}
	if(aa == 41)
	{
		ret := "2diamonds"
	}
	if(aa == 42)
	{
		ret := "3diamonds"
	}
	if(aa == 43)
	{
		ret := "4diamonds"
	}
	if(aa == 44)
	{
		ret := "5diamonds"
	}
	if(aa == 45)
	{
		ret := "6diamonds"
	}
	if(aa == 46)
	{
		ret := "7diamonds"
	}
	if(aa == 47)
	{
		ret := "8diamonds"
	}
	if(aa == 48)
	{
		ret := "9diamonds"
	}
	if(aa == 49)
	{
		ret := "10diamonds"
	}
	if(aa == 50)
	{
		ret := "11diamonds"
	}
	if(aa == 51)
	{
		ret := "12diamonds"
	}
	if(aa == 52)
	{
		ret := "13diamonds"
	}
	;msgbox,,,ret(%ret%)
	return ret
}
findcardpic(aa)
{
	ret :=
	if(aa == 1)
	{
		ret :=  1clubs
	}
	if(aa == 2)
	{
		ret := 2clubs
	}
	if(aa == 3)
	{
		ret := 3clubs
	}
	if(aa == 4)
	{
		ret := 4clubs
	}
	if(aa == 5)
	{
		ret := 5clubs
	}
	if(aa == 6)
	{
		ret := 6clubs
	}
	if(aa == 7)
	{
		ret := 7clubs
	}
	if(aa == 8)
	{
		ret := 8clubs
	}
	if(aa == 9)
	{
		ret := 9clubs
	}
	if(aa == 10)
	{
		ret := 10clubs
	}
	if(aa == 11)
	{
		ret := 11clubs
	}
	if(aa == 12)
	{
		ret := 12clubs
	}
	if(aa == 13)
	{
		ret := 13clubs
	}
	if(aa == 14)
	{
		ret := 1hearts
	}
	if(aa == 15)
	{
		ret := 2hearts
	}
	if(aa == 16)
	{
		ret := 3hearts
	}
	if(aa == 17)
	{
		ret := 4hearts
	}
	if(aa == 18)
	{
		ret := 5hearts
	}
	if(aa == 19)
	{
		ret := 6hearts
	}
	if(aa == 20)
	{
		ret := 7hearts
	}
	if(aa == 21)
	{
		ret := 8hearts
	}
	if(aa == 22)
	{
		ret := 9hearts
	}
	if(aa == 23)
	{
		ret := 10hearts
	}
	if(aa == 24)
	{
		ret := 11hearts
	}
	if(aa == 25)
	{
		ret := 12hearts
	}
	if(aa == 26)
	{
		ret := 13hearts
	}
	if(aa == 27)
	{
		ret := 1spades
	}
	if(aa == 28)
	{
		ret := 2spades
	}
	if(aa == 29)
	{
		ret := 3spades
	}
	if(aa == 30)
	{
		ret := 4spades
	}
	if(aa == 31)
	{
		ret := 5spades
	}
	if(aa == 32)
	{
		ret := 6spades
	}
	if(aa == 33)
	{
		ret := 7spades
	}
	if(aa == 34)
	{
		ret := 8spades
	}
	if(aa == 35)
	{
		ret := 9spades
	}
	if(aa == 36)
	{
		ret := 10spades
	}
	if(aa == 37)
	{
		ret := 11spades
	}
	if(aa == 38)
	{
		ret := 12spades
	}
	if(aa == 39)
	{
		ret := 13spades
	}
	if(aa == 40)
	{
		ret := 1diamonds
	}
	if(aa == 41)
	{
		ret := 2diamonds
	}
	if(aa == 42)
	{
		ret := 3diamonds
	}
	if(aa == 43)
	{
		ret := 4diamonds
	}
	if(aa == 44)
	{
		ret := 5diamonds
	}
	if(aa == 45)
	{
		ret := 6diamonds
	}
	if(aa == 46)
	{
		ret := 7diamonds
	}
	if(aa == 47)
	{
		ret := 8diamonds
	}
	if(aa == 48)
	{
		ret := 9diamonds
	}
	if(aa == 49)
	{
		ret := 10diamonds
	}
	if(aa == 50)
	{
		ret := 11diamonds
	}
	if(aa == 51)
	{
		ret := 12diamonds
	}
	if(aa == 52)
	{
		ret := 13diamonds
	}
	;msgbox,,,ret(%ret%)
	return ret
}
findcardvalue(aaa)
{
	ret :=
	if(aaa == "1clubs") || (aaa == "1hearts") || (aaa == "1spades") || (aaa == "1diamonds")
	{
		ret := 100
	}
	if(aaa == "2clubs") || (aaa == "2hearts") || (aaa == "2spades") || (aaa == "2diamonds")
	{
		ret := 2
	}
	if(aaa == "3clubs") || (aaa == "3hearts") || (aaa == "3spades") || (aaa == "3diamonds")
	{
		ret := 3
	}
	if(aaa == "4clubs") || (aaa == "4hearts") || (aaa == "4spades") || (aaa == "4diamonds")
	{
		ret := 4
	}
	if(aaa == "5clubs") || (aaa == "5hearts") || (aaa == "5spades") || (aaa == "5diamonds")
	{
		ret := 5
	}
	if(aaa == "6clubs") || (aaa == "6hearts") || (aaa == "6spades") || (aaa == "6diamonds")
	{
		ret := 6
	}
	if(aaa == "7clubs") || (aaa == "7hearts") || (aaa == "7spades") || (aaa == "7diamonds")
	{
		ret := 7
	}
	if(aaa == "8clubs") || (aaa == "8hearts") || (aaa == "8spades") || (aaa == "8diamonds")
	{
		ret := 8
	}
	if(aaa == "9clubs") || (aaa == "9hearts") || (aaa == "9spades") || (aaa == "9diamonds")
	{
		ret := 9
	}
	if(aaa == "10clubs") || (aaa == "10hearts") || (aaa == "10spades") || (aaa == "10diamonds")
	{
		ret := 10
	}
	if(aaa == "11clubs") || (aaa == "11hearts") || (aaa == "11spades") || (aaa == "11diamonds")
	{
		ret := 11
	}
	if(aaa == "12clubs") || (aaa == "12hearts") || (aaa == "12spades") || (aaa == "12diamonds")
	{
		ret := 12
	}
	if(aaa == "13clubs") || (aaa == "13hearts") || (aaa == "13spades") || (aaa == "13diamonds")
	{
		ret := 13
	}
	
	return ret	
}

Battle(sidea, sideb)
{
	if(sidea > sideb)
	{
		return 1
	}
	if(sidea < sideb)
	{
		return 2
	}
	if(sidea == sideb)
	{
		return 3
	}
}
RandomNumberGen()
{
	w := 
	
	random, w, 1, 52
	
	return w
}
GenChecker(gennum)
{
	g := % card%gennum%.Used
	if(g == false)
		return false
	return true
}
WarGame()
{
	pos1battle :=
	pos2battle :=
	1war := 3
	hideWarPlyrTurn() 
	showWarPlyrTurn()
	sleep 1000
	
	if(Wartimes != 0)
	{
		1war := 1war*Wartimes
	}
	
	if(GameType == 1)
	{
		guicontrol, hide, pic1p1war
		guicontrol,, pic1p1war, %warpic%
		guicontrol, show, pic1p1war
		sleep 500
		guicontrol, hide, pic2p1war
		guicontrol,, pic2p1war, %warpic%
		guicontrol, show, pic2p1war
		sleep 500
		guicontrol, hide, pic3p1war
		guicontrol,, pic3p1war, %warpic%
		guicontrol, show, pic3p1war
		sleep 500
		guicontrol, hide, pic4p1war
		guicontrol,, pic4p1war, %warpic%
		guicontrol, show, pic4p1war
		sleep 500
		
		guicontrol, hide, pic1p2war
		guicontrol,, pic1p2war, %warpic%
		guicontrol, show, pic1p2war
		sleep 500
		guicontrol, hide, pic2p2war
		guicontrol,, pic2p2war, %warpic%
		guicontrol, show, pic2p2war
		sleep 500
		guicontrol, hide, pic3p2war
		guicontrol,, pic3p2war, %warpic%
		guicontrol, show, pic3p2war
		sleep 500
		guicontrol, hide, pic4p2war
		guicontrol,, pic4p2war, %warpic%
		guicontrol, show, pic4p2war
		sleep 500
	}
	else
	{
		guicontrol, hide, pic1p2war
		guicontrol,, pic1p2war, %warpic%
		guicontrol, show, pic1p2war
		sleep 500
		guicontrol, hide, pic2p2war
		guicontrol,, pic2p2war, %warpic%
		guicontrol, show, pic2p2war
		sleep 500
		guicontrol, hide, pic3p2war
		guicontrol,, pic3p2war, %warpic%
		guicontrol, show, pic3p2war
		sleep 500
		guicontrol, hide, pic4p2war
		guicontrol,, pic4p2war, %warpic%
		guicontrol, show, pic4p2war
		sleep 500
		
		guicontrol, hide, pic1p1war
		guicontrol,, pic1p1war, %warpic%
		guicontrol, show, pic1p1war
		sleep 500
		guicontrol, hide, pic2p1war
		guicontrol,, pic2p1war, %warpic%
		guicontrol, show, pic2p1war
		sleep 500
		guicontrol, hide, pic3p1war
		guicontrol,, pic3p1war, %warpic%
		guicontrol, show, pic3p1war
		sleep 500
		guicontrol, hide, pic4p1war
		guicontrol,, pic4p1war, %warpic%
		guicontrol, show, pic4p1war
		sleep 500
	}
	
	
	loop
	{
		pos1card := RandomNumberGen()
		;msgbox,,,f(%pos1card%)
		z := GenChecker(pos1card)
		;msgbox,,, z(%z%)
		if(z == false)
		{
			;msgbox,,, % (card%pos1card%.PHand)
			if(card%pos1card%.PHand == 1)
			{
				card%pos1card%.Used := true				
				pos1battle := card%pos1card%.Value
				pic := card%pos1card%.Pic
				guicontrol, hide, pic4p1war
				guicontrol,, pic4p1war, res\War\warcards\%pic%
				guicontrol, show, pic4p1war
				break
			}
		}
		checkHandReset()
	}
	PlayerNumber := switchposdeal(PlayerNumber)
	hideWarPlyrTurn() 
	showWarPlyrTurn()
	sleep 1000
	loop
	{
		pos2card := RandomNumberGen()
		;msgbox,,,f(%pos2card%)
		z := GenChecker(pos2card)
		;msgbox,,, z(%z%)
		if(z == false)
		{
			;msgbox,,, % (card%pos2card%.PHand)
			if(card%pos2card%.PHand == 2)
			{
				card%pos2card%.Used := true				
				pos2battle := card%pos2card%.Value
				pic := card%pos2card%.Pic
				guicontrol, hide, pic4p2war
				guicontrol,, pic4p2war, res\War\warcards\%pic%
				guicontrol, show, pic4p2war
				break
			}
		}
		checkHandReset()
	}
	
	gg := Battle(pos1battle, pos2battle)
	
	if(gg == 1)
	{
		card%pos2card%.PHand := 1
		fg := 1
		loop, %1war%
		{
			loop
			{
				pos2card := RandomNumberGen()
				vf := GenChecker(pos2card)
				if(vf == false)
				{
					;msgbox,,, % (card%pos2card%.PHand)
					if(card%pos2card%.PHand == 2)
					{
						card%pos2card%.Used := true
						card%pos2card%.PHand := 1
						pic := card%pos2card%.Pic
						guicontrol, hide, pic%fg%p2war
						guicontrol,, pic%fg%p2war, res\War\warcards\%pic%
						guicontrol, show, pic%fg%p2war
						break
					}
				}
				checkHandReset()
			}
			sleep 1000
			fg++
		}
		
	}
	else if(gg == 2)
	{
		card%pos1card%.PHand := 2
		df := 1
		loop, 3
		{
			loop
			{
				pos1card := RandomNumberGen()
				vfg := GenChecker(pos1card)
				if(vfg == false)
				{
					;msgbox,,, % (card%pos1card%.PHand)
					if(card%pos1card%.PHand == 1)
					{
						card%pos1card%.Used := true
						card%pos1card%.PHand := 2
						pic := card%pos1card%.Pic
						guicontrol, hide, pic%df%p1war
						guicontrol,, pic%df%p1war, res\War\warcards\%pic%
						guicontrol, show, pic%df%p1war
						break
					}
				}
				checkHandReset()
			}
			sleep 1000
			df++
		}
	}
	else if(gg == 3)
	{
		Wartimes ++
		WarGame()
	}
	
	hideWarPlyrTurn()
	PlayerNumber := switchposdeal(PlayerNumber)
	showWarPlyrTurn()
	sleep 1000
	if(GameType == 1)
	{
		guicontrol, hide, pic1p1war
		sleep 500
		guicontrol, hide, pic2p1war
		sleep 500
		guicontrol, hide, pic3p1war
		sleep 500
		
		guicontrol, hide, pic1p2war
		sleep 500
		guicontrol, hide, pic2p2war
		sleep 500
		guicontrol, hide, pic3p2war
		sleep 500
	}
	else
	{
		guicontrol, hide, pic1p2war
		sleep 500
		guicontrol, hide, pic2p2war
		sleep 500
		guicontrol, hide, pic3p2war
		sleep 500
		
		guicontrol, hide, pic1p1war
		sleep 500
		guicontrol, hide, pic2p1war
		sleep 500
		guicontrol, hide, pic3p1war
		sleep 500
	}
	
	return
}


EndTurn()
{
	sx := Battle(pos1battle, pos2battle)
	;msgbox,,,sx(%sx%)
	if(sx == 1)
	{
		card%pos2card%.PHand := 1
	}
	if(sx == 2)
	{
		card%pos1card%.PHand := 2
	}
				
	if(sx == 3)
	{
		WarGame()
	}
	findplayercardsleft()
	showPlayercardsleftnum()	
	hideWarPlyrTurn()
	PlayerNumber := switchposdeal(PlayerNumber)
	ResetCards()
	showWarPlyrTurn()
	
	return
}
checkHandReset()
{
	sdf := 1
	loop 52
	{
		if(card%sdf%.PHand == 1)
			p1cards += 1
		if(card%sdf%.PHand == 2)
			p2cards += 1
		sdf ++
	}
	sdf := 1
	;msgbox,,, p1cards(%p1cards%) p2cards(%p2cards%)
	loop 52
	{
		if(card%sdf%.PHand == 1)
		{
			if(card%sdf%.Used == 1)
				p1used += 1
		}
		if(card%sdf%.PHand == 2)
		{
			if(card%sdf%.Used == 2)
				p2used += 1
		}
		sdf ++
	}
	if(p1cards == p1used) || (p2cards == p2used)
	{
		ResetPlyrsCards()
	}
	sdf := 0
	
	return
}
;      ------------------------------------ All Games ---------------------------------------------------------

updategamestats(updater)
{
	if(WhichGame == 1)
	{
		if(updater == 0)
		{
			C4TGamesp1 += 1
			iniwrite, %C4TGamesp1%, Ini\Games\C4.ini, GameTotals, C4gametotalp1
			iniread, C4TGamesp1, Ini\Games\C4.ini, GameTotals, C4gametotalp1
			
			C4TGamesp2 += 1
			iniwrite, %C4TGamesp2%, Ini\Games\C4.ini, GameTotals, C4gametotalp2
			iniread, C4TGamesp2, Ini\Games\C4.ini, GameTotals, C4gametotalp2
			
		}
		if(updater == 1)
		{
			C4WGamesp1 += 1
			iniwrite, %C4WGamesp1%, Ini\Games\C4.ini, GameTotals, C4wongamesp1
			iniread, C4WGamesp1, Ini\Games\C4.ini, GameTotals, C4wongamesp1
		}
		if(updater == 2)
		{
			C4WGamesp2 += 1
			iniwrite, %C4WGamesp2%, Ini\Games\C4.ini, GameTotals, C4wongamesp2
			iniread, C4WGamesp2, Ini\Games\C4.ini, GameTotals, C4wongamesp2
			
		}
		if(updater == 3)
		{
			C4LGamesp1 += 1
			iniwrite, %C4LGamesp1%, Ini\Games\C4.ini, GameTotals, C4lostgamesp1
			iniread, C4LGamesp1, Ini\Games\C4.ini, GameTotals, C4lostgamesp1
		}
		if(updater == 4)
		{
			C4LGamesp2 += 1
			iniwrite, %C4LGamesp2%, Ini\Games\C4.ini, GameTotals, C4lostgamesp2
			iniread, C4LGamesp2, Ini\Games\C4.ini, GameTotals, C4lostgamesp2
		}
	}
	if(WhichGame == 2)
	{
		if(updater == 0)
		{
			3TTGamesp1 += 1
			iniwrite, %3TTGamesp1%, Ini\Games\3T.ini, GameTotals, 3Tgametotalp1
			iniread, 3TTGamesp1, Ini\Games\3T.ini, GameTotals, 3Tgametotalp1
			
			3TTGamesp2 += 1
			iniwrite, %3TTGamesp2%, Ini\Games\3T.ini, GameTotals, 3Tgametotalp2
			iniread, 3TTGamesp2, Ini\Games\3T.ini, GameTotals, 3Tgametotalp2
		}
		if(updater == 1)
		{
			3TWGamesp1 += 1
			iniwrite, %3TWGamesp1%, Ini\Games\3T.ini, GameTotals, 3Twongamesp1
			iniread, 3TWGamesp1, Ini\Games\3T.ini, GameTotals, 3Twongamesp1
		}
		if(updater == 2)
		{
			3TWGamesp2 += 1
			iniwrite, %3TWGamesp2%, Ini\Games\3T.ini, GameTotals, 3Twongamesp2
			iniread, 3TWGamesp2, Ini\Games\3T.ini, GameTotals, 3Twongamesp2
			
		}
		if(updater == 3)
		{
			3TLGamesp1 += 1
			iniwrite, %3TLGamesp1%, Ini\Games\3T.ini, GameTotals, 3Tlostgamesp1
			iniread, 3TLGamesp1, Ini\Games\3T.ini, GameTotals, 3Tlostgamesp1
		}
		if(updater == 4)
		{
			
			3TLGamesp2 += 1
			iniwrite, %3TLGamesp2%, Ini\Games\3T.ini, GameTotals, 3Tlostgamesp2
			iniread, 3TLGamesp2, Ini\Games\3T.ini, GameTotals, 3Tlostgamesp2
			
		}
		if(updater == 5)
		{
			3TDGamesp1 += 1
			iniwrite, %3TDGamesp1%, Ini\Games\3T.ini, GameTotals, 3Tdrawgamesp1
			iniread, 3TDGamesp1, Ini\Games\3T.ini, GameTotals, 3Tdrawgamesp1
			
			3TDGamesp2 += 1
			iniwrite, %3TDGamesp2%, Ini\Games\3T.ini, GameTotals, 3Tdrawgamesp2
			iniread, 3TDGamesp2, Ini\Games\3T.ini, GameTotals, 3Tdrawgamesp2
			
		}
	}
	if(WhichGame == 3)
	{
	
	}
	if(WhichGame == 4)
	{
	
	}
	
	return
}
showGameBoard()
{
	if(WhichGame == 1)
	{
		blockinput, mousemove
		gui, hide
		loadStats()
		showC4Stats()
		sleep 5000
		hideallStats(WhichGame)
		setupgamepieces()
		showC4GameBoard()
		showPlyrPiece()
		showPlyrTurn()
		onmessage(0x200, "WM_MOUSEMOVE")
		Gui, Show, x600 y200 h705 w885 center, Connect 4 Circles V_%C4version%
		if(GameType == 1)
			Main()
		else
			ComputerTurn(0)
	}
	
	if(WhichGame == 2)
	{
		blockinput, mousemove
		gui, hide
		loadstats()
		show3TStats() 
		sleep 5000
		hideallStats(WhichGame)
		
		show3TGameTiles()
		show3TPlyrTurn()
		show3TGameInfoBoarder()
		show3TPlyrPiece()
		setuptoepieces()
		Gui, Show, x600 y200 h700 w800 center, 3T Tic Tac Toe V_%3Tversion%
		blockinput, mousemoveoff
		if(GameType == 1)
			Main()
		else
			ComputerTurn(0)
	}
	if(WhichGame == 3)
	{
		gui, hide
		;loadstats()
		;showStatsCheckers()
		
		;sleep 5000
		gui, hide
		hideallstats(WhichGame)
		SetUpPieces()
		showCheckersBoard()
		loop 32
			showCheckersGamePieces(a_index)
		
		onmessage(0x200, "WM_MOUSEMove")
		Gui, Show, x9 y16 h710 w1216 center, Checkers V_%Cversion%	
		
		if(GameType == 1)
			Main()
		else
		{
			;ret := SemiRanNumberGen(32)
			ComputerTurn(0)
		}
	}
	if(WhichGame == 4)
	{
		gui, hide
		;showWarStats()
		;sleep 5000
		;gui, hide
		;hideallstats(WhichGame)
		showWarBoard()
		showStartWarPics()
		Gui, Show, x137 y36 h645 w1145 center, War V_%Wversion%
		ShuffleNDeal()
		blockinput, mousemoveoff
		if(GameType == 1)
			Main()
		else
			ComputerTurn(0)
	}
	
	return
}
ComputerTurn(rnin)
{
	
	checknumber :=
	if(WhichGame == 1)
	{
		ran :=
		loop
		{
			ran := randomnumber()
			dfd := CheckBoxStatus(ran)
			if(dfd == "I")
			{
				ass := FindColumn(ran)
				das := FindRow(ran)
				ssa := findboxnumberC(ran)
				break
			}
		}
		sleep 1500
		if(ShowAnimations == false)
			PlacePiece(ssa, ran)
		else
			AnimatePieces(ass, ran, das)
		showC4Pictures()
		gi := CheckGameC4(PlayerNumber)
		if(gi != 0)
		{
			blockinput, mousemoveoff
			hideC4PlyrTurnNames()
			hidePlyrPiece()
			if(gi == 2)
			{
				guicontrol, hide, EndTxt
				guicontrol,, EndTxt, %Plyr2Name% Wins Game
				guicontrol, show, EndTxt
				updategamestats(0)
				updategamestats(2)
				updategamestats(3)
			}
			else
			{
				guicontrol, hide, EndTxt
				guicontrol,, EndTxt, %Plyr1Name% Wins Game
				guicontrol, show, EndTxt
				updategamestats(0)
				updategamestats(1)
				updategamestats(4)
			}
			sleep 4000
			gui, hide
			hideC4GameBoard()
			hideC4Pictures()
			loadStats()
			showC4Stats()
			sleep 8000
			hideallStats(WhichGame)
			showC4GameBoard()
			showC4Pictures()
			hideC4PlyrTurnNames()
			hidePlyrPiece()
			Gui, Show, x600 y200 h705 w885 center, Connect 4 Circles V_%C4Version%
			guicontrol, show, Reply
			guicontrol, show, Sett
			guicontrol, show, Ext
			GameComplete := true
			return
		}
		blockinput, mousemoveoff
		hidePlyrTurn()
		hidePlyrPiece()
		sleep 500
		PlayerNumber := switchplayer(PlayerNumber)
		showPlyrTurn()
		showPlyrPiece()
		Main()
	}
	if(WhichGame == 2)
	{
		sleep 2000
		nexcntrl := ComThink()
		Tbox%nexcntrl%.Owner := PlayerNumber
		Tbox%nexcntrl%.Status := "A"
		
		if(checkGame3T(PlayerNumber) == true)
		{
			winnerending()
			return
		}
				
		if(checkdraw() == true)
		{
			drawending()
			return
		}
			
		showGamePieces()
		hide3TPlyrPiece()
		hide3TPlyrTurn()
		PlayerNumber := switchplayer(PlayerNumber)
		show3TPlyrPiece()
		show3TPlyrTurn()
		Main()
	}
	if(WhichGame == 3) ; -------- needs work -----------
	{
		sleep 2000
		x :=
		
		loop
		{
			randcontrol := SemiRanNumberGen(x)
			startcontrol := getcboxpostion(randcontrol)
			;msgbox,,,startcontrol(%startcontrol%)
			startmoves := checkerbox%startcontrol%.Jumpmoves
			CheckJump := checkforjumpcomp(startmoves, 2)
			;msgbox,,,rand(%randcontrol%) startmoves(%startmoves%) CheckJump(%CheckJump%) endcntrl(%endcntrl%)
			
			if(CheckJump == 0)
			{
				;msgbox,,,no jump 0
				endmoves := checkerbox%startcontrol%.Moves
				endcntrl := checkforjumpcomp(endmoves, 2)
				;msgbox,,,endcntrl(%endcntrl%)
				if(checkerbox%startcontrol%.Kinged == 0)
				{	
					if(endcntrl > startcontrol)
					{
						showCheckersPlayerTurn()
						loop 32
							showCheckersGamePieces(a_index)
						continue
					}
				}
				if(endcntrl != 0)
				{
					if(checkerbox%startcontrol%.Kinged == 1)
					{
						checkerbox%endcntrl%.Kinged := 1
						checkerbox%startcontrol%.Kinged := 0
					}
						
					checkerbox%endcntrl%.ID := checkerbox%startcontrol%.ID
					checkerbox%startcontrol%.ID := 0
					checkerbox%startcontrol%.Owner := 0
					checkerbox%startcontrol%.Status := "Blank"
					checkerbox%endcntrl%.Owner := 2
					checkerbox%endcntrl%.Status := "Active"
					if(endcntrl == 1) || (endcntrl == 2) || (endcntrl == 3) || (endcntrl == 4)
						checkerbox%endcntrl%.Kinged := 1
					loop 32
						showCheckersGamePieces(a_index)
					if(p1remainingleft == 0)
						WinningPlayer := 2
					else if(p2remainingleft == 0)
						WinningPlayer := 1
					if(WinningPlayer != 0)
						break
					break
					
				}
			}
			else
			{
				
				JMoves := CheckJumpMove(startcontrol, CheckJump)
				;msgbox,,, jump JMoves(%JMoves%)
				if(checkerbox%startcontrol%.Kinged == 0)
				{	
					if(CheckJump > startcontrol)
					{
						showCheckersPlayerTurn()
						loop 32
							showCheckersGamePieces(a_index)
						continue
					}
				}
				if(checkerbox%JMoves%.Owner == 1)
				{
					;msgbox,,, owner 1 jumping
					
					if(checkerbox%startcontrol%.Kinged == 1)
					{
						checkerbox%CheckJump%.Kinged := 1
						checkerbox%startcontrol%.Kinged := 0
					}
					
					checkerbox%CheckJump%.ID := checkerbox%startcontrol%.ID
					checkerbox%startcontrol%.ID := 0
					checkerbox%startcontrol%.Owner := 0
					checkerbox%startcontrol%.Status := "Blank"
					checkerbox%JMoves%.Owner := 0
					checkerbox%JMoves%.Status := "Blank"
					checkerbox%JMoves%.ID := 0
					checkerbox%CheckJump%.Owner := 2
					checkerbox%CheckJump%.Status := "Active"
					if(checkerbox%JMoves%.Kinged == 1)
					{
						p2scoretotal := p2scoretotal + 5000
						checkerbox%JMoves%.Kinged := 0
					}
					else
						p2scoretotal := p2scoretotal + 1000
					if(CheckJump == 1) || (CheckJump == 2) || (CheckJump == 3) || (CheckJump == 4)
						checkerbox%CheckJump%.Kinged := 1
					loop 32
						showCheckersGamePieces(a_index)
					if(p1remainingleft == 0)
						WinningPlayer := 2
					else if(p2remainingleft == 0)
						WinningPlayer := 1
					if(WinningPlayer != 0)
						break
					break
					
				}
				if(checkerbox%JMoves%.Owner == 0)
				{
					;msgbox,,, owner 1 no jump single move
					if(checkerbox%startcontrol%.Kinged == 1)
					{
						checkerbox%JMoves%.Kinged := 1
						checkerbox%startcontrol%.Kinged := 0
					}
						
					checkerbox%JMoves%.ID := checkerbox%startcontrol%.ID
					checkerbox%startcontrol%.ID := 0
					checkerbox%startcontrol%.Owner := 0
					checkerbox%startcontrol%.Status := "Blank"
					checkerbox%JMoves%.Owner := 2
					checkerbox%JMoves%.Status := "Active"
					if(JMoves == 1) || (JMoves == 2) || (JMoves == 3) || (JMoves == 4)
						checkerbox%JMoves%.Kinged := 1
					loop 32
						showCheckersGamePieces(a_index)
					if(p1remainingleft == 0)
						WinningPlayer := 2
					else if(p2remainingleft == 0)
						WinningPlayer := 1
					if(WinningPlayer != 0)
						break
					break
				}
			}
			if(a_index == 50)
			{
				msgbox,,, error
				listvars
				x := 1
				loop 32
				{
					if(checkerbox%x%.Owner == 2)
					{
						break
					}
					x++
				}
			}
		}
		loop 32
			showCheckersGamePieces(a_index)
		if(WinningPlayer != 0)
		{
			guicontrol, hide, Position1Turn
			guicontrol,, Position1Turn,% Plyr%WinningPlayer%Name " Wins"
			guicontrol, show, Position1Turn
			showCButtons()
		}
		else
		{
			PlayerNumber := switchplayer(PlayerNumber)
			showCheckersPlayerTurn()
			findCheckersRemaining()
			showCheckersRemaining()
			showCheckersScore()
			Main()
		}
		return
	}
	if(WhichGame == 4)
	{
		sleep 500
		cnt := 1
		p1cards := 0
		p2cards := 0
		p1used := 0
		p2used := 0
		
		loop
		{
			pos2card := RandomNumberGen()
			;msgbox,,,f(%pos2card%)
			z := GenChecker(pos2card)
			;msgbox,,, z(%z%)
			if(z == false)
			{
				;msgbox,,, % (card%pos2card%.PHand)
				if(card%pos2card%.PHand == 2)
				{
					card%pos2card%.Used := true
					pos2battle := card%pos2card%.Value
					pic := card%pos2card%.Pic
					guicontrol, hide, pic4p2war
					guicontrol,, pic4p2war, res\War\warcards\%pic%
					guicontrol, show, pic4p2war
					break
				}
			}
			checkHandReset()
		}
		if(GameType == 1)
			EndTurn()
		sleep 500
		Main()
		
		return
	}
}

Main()
{
	if(WhichGame == 1)
	{
		blockinput, mousemoveoff
		loop
		{
			jk := 0
			curcntrl := 
			nexcntrl := 
			AnimateNumber := 0
			AnimateRow := 0	
			
			ifwinactive, Connect 4 Circles V_%C4version%
				keywait, LButton, d
			else
			{
				WinWaitActive, Connect 4 Circles V_%C4version%
				keywait, LButton, d
			}
			mousegetpos, mxpos, mypos,, curcntrl
			startcontrol := findC4control(curcntrl)
			if(startcontrol == 1)
			{
				hidePlyrPiece()
				GetKeyState, ButtonState, LButton, p
				while(ButtonState == "D")
				{
					GetKeyState, ButtonState, LButton, p
					guicontrol, hide, moving%PlayerNumber%
					guicontrol, move, moving%PlayerNumber%, % "x" mxpos-40 "y" mypos-60 "w" 80 "h" 70
					guicontrol, show, moving%PlayerNumber% 	
					if(ButtonState == "U")
					{
						guicontrol, hide, moving%PlayerNumber%
						mousegetpos, mxpos, mypos,, nexcntrl
						jk := findC4control(nexcntrl)
						if(jk >= 1)
							break
						else
							showPlyrPiece()
					}
					sleep 125
				}
				if(jk >= 1)
					break
			}
		}	
		gg := findC4control(nexcntrl)
		gg := gg - 22
		dfd := FindColumn(gg)
		dgd := FindRow(gg)
		sad := findboxnumberC(gg)
		if(ShowAnimations == false)
			PlacePiece(sad, gg)
		else
			AnimatePieces(dfd, gg, dgd)
		showC4Pictures()
		gi := CheckGameC4(PlayerNumber)
		if(gi != 0)
		{
			blockinput, mousemoveoff
			hideC4PlyrTurnNames()
			hidePlyrPiece()
			if(gi == 1)
			{
				guicontrol, hide, EndTxt
				guicontrol,, EndTxt, %Plyr1Name% Wins Game
				guicontrol, show, EndTxt
				updategamestats(0)
				updategamestats(1)
				updategamestats(4)
			}
			else
			{
				guicontrol, hide, EndTxt
				guicontrol,, EndTxt, %Plyr2Name% Wins Game
				guicontrol, show, EndTxt
				updategamestats(0)
				updategamestats(2)
				updategamestats(3)
			}
			sleep 4000
			gui, hide
			hideC4GameBoard()
			hideC4Pictures()
			loadStats()
			showC4Stats()
			sleep 8000
			hideallStats(WhichGame)
			showC4GameBoard()
			showC4Pictures()
			hideC4PlyrTurnNames()
			hidePlyrPiece()
			Gui, Show, x600 y200 h705 w885 center, Connect 4 Circles V_%C4version%	
			guicontrol, show, Reply
			guicontrol, show, Sett
			guicontrol, show, Ext
			GameComplete := true
			return
		}
		
		blockinput, mousemoveoff
		hidePlyrTurn()
		hidePlyrPiece()
		sleep 500
		PlayerNumber := switchplayer(PlayerNumber)
		showPlyrTurn()
		showPlyrPiece()
		ComputerTurn(0)
	}
	if(WhichGame == 2)
	{
		onmessage(0x200, "WM_MOUSEHOVER")
		blockinput, mousemoveoff
		loop
		{
			ifwinactive, 3T Tic Tac Toe V_%3Tversion%
				keywait, LButton, d
			else
			{
				WinWaitActive, 3T Tic Tac Toe V_%3Tversion%
				keywait, LButton, d
			}
				
			mousegetpos, mxpos, mypos,, curcntrl
					
			if(curcntrl == "Static42") || (curcntrl == "Static43")
			{
				hide3TPlyrPiece()
				GetKeyState, ButtonState, LButton, p
				while(ButtonState == "D")
				{
					GetKeyState, ButtonState, LButton, p
					guicontrol, hide, moving%PlayerNumber%
					guicontrol, move, moving%PlayerNumber%, % "x" mxpos-40 "y" mypos-60 "w" 100 "h" 100
					guicontrol, show, moving%PlayerNumber% 
					sleep 125
					if(ButtonState == "U")
					{
						guicontrol, hide, moving%PlayerNumber%
						mousegetpos, mxpos, mypos,, nexcntrl
						break
					}
				}
			}
			else
			{
				show3TPlyrPiece()
				continue
			}
			break
		}
		boxinplay := find3Tcontrol(nexcntrl)
		Tbox%boxinplay%.Owner := PlayerNumber
		Tbox%boxinplay%.Status := "A"
		
		if(checkGame3T(PlayerNumber) == true)
		{
			winnerending()
			return
		}
				
		if(checkdraw() == true)
		{
			drawending()
			return
		}
			
		showGamePieces()
		hide3TPlyrPiece()
		hide3TPlyrTurn()
		PlayerNumber := switchplayer(PlayerNumber)
		show3TPlyrPiece()
		show3TPlyrTurn()
		ComputerTurn(0)
	}
	
	if(WhichGame == 3)
	{
		;checkcheckers()
		loop
		{
			startcontrol := 
			z:=
				
			ifwinactive, Checkers V_%Cversion%
				keywait, LButton, d
			else
			{
				WinWaitActive, Checkers V_%Cversion%
				keywait, LButton, d
			}
			mousegetpos, mxpos, mypos,, curcntrl	
			startcontrol := FindControl(curcntrl)
			;msgbox,,,st(%startcontrol%) cur(%curcntrl%)
			if(startcontrol == 0)
			{
				showCheckersPlayerTurn()
				msgbox, 0x40000, Checkers Rules, Please Choose A Red Game Piece To Move ., 3
				continue
			}
			;msgbox,,, % "start(" checkerbox%startcontrol%.Owner ") ID(" checkerbox%startcontrol%.ID ")"
			if(checkerbox%startcontrol%.Owner != PlayerNumber)
			{	
				;msgbox,,,% "own(" checkerbox%startcontrol%.Owner ")"
				showCheckersPlayerTurn()
				msgbox, 0x40000, Checkers Rules, Player 1 Must Use The Red Game Pieces ., 3
				continue
			}

			GetKeyState, ButtonState, LButton, p
			while(ButtonState == "D")
			{
				mousegetpos, mxpos, mypos,, curcntrl
				if(checkerbox%startcontrol%.Kinged == 1)
				{
					guicontrol, hide, kp1pic%startcontrol%
					guicontrol, hide, moving1k
					guicontrol, move, moving1k, % "x" mxpos-40 "y" mypos-60 "w" 80 "h" 70
					guicontrol, show, moving1k
				}
				else
				{
					guicontrol, hide, p1pic%startcontrol%
					guicontrol, hide, moving1
					guicontrol, move, moving1, % "x" mxpos-40 "y" mypos-60 "w" 80 "h" 70
					guicontrol, show, moving1
				}
				sleep 100
				GetKeyState, ButtonState, LButton, p
				if(ButtonState == "U")
				{
					if(checkerbox%startcontrol%.Kinged == 1)
						guicontrol, hide, moving1k
					else
						guicontrol, hide, moving1
					mousegetpos, mxpos, mypos,, curcntrl
				}
				loop 32
					showCheckersGamePieces(a_index)
			}
			endcntrl := FindControl(curcntrl)
			;msgbox,,,start(%startcontrol%) cur(%curcntrl%) endcntrl(%endcntrl%)
			if(checkerbox%startcontrol%.Kinged == 0)
			{
				
				if(endcntrl < startcontrol)
				{
					if(endcntrl == 0)
						msgbox, 0x40000, Checker Rules, Illegal Move ., 3
					else
						msgbox, 0x40000, Checker Rules, Move Not Permitted . Only A Kinged Piece Can Move Backwards .,3
					showCheckersPlayerTurn()
					loop 32
						showCheckersGamePieces(a_index)
					continue
				}
			}
			EndMove := CheckBoxOwner(endcntrl)
			if(EndMove != 0) && (EndMove == 2)
			{
				msgbox, 0x40000, Checker Rules, This Box Is Active ( Belongs To Player %EndMove%) .`nPlease Choose A Different Piece To Move., 3
				showCheckersPlayerTurn()
				loop 32
					showCheckersGamePieces(a_index)
				continue
			}
			checkjump := CheckJumpMove(startcontrol, endcntrl)
			if(checkjump == 0)
			{
				;msgbox,,, no jump,3
				posmove := FindBoxMoves(startcontrol)
				legalmove := CheckSurroundingBoxes(posmove, endcntrl)
				;msgbox,,, pos(%posmove%) legal(%legalmove%)
				if(legalmove)
				{
					;msgbox,,,legal move
					if(checkerbox%startcontrol%.Kinged == 1)
					{
						checkerbox%endcntrl%.Kinged := 1
						checkerbox%startcontrol%.Kinged := 0
					}
					
					checkerbox%endcntrl%.ID := checkerbox%startcontrol%.ID
					checkerbox%startcontrol%.ID := 0
					checkerbox%startcontrol%.Owner := 0
					checkerbox%startcontrol%.Status := "Blank"
					checkerbox%endcntrl%.Owner := 1
					checkerbox%endcntrl%.Status := "Active"
					if(endcntrl == 29) || (endcntrl == 30) || (endcntrl == 31) || (endcntrl == 32)
						checkerbox%endcntrl%.Kinged := 1
					loop 32
						showCheckersGamePieces(a_index)
					if(p1remainingleft == 0)
						WinningPlayer := 2
					else if(p2remainingleft == 0)
						WinningPlayer := 1
					if(WinningPlayer != 0)
						break
					break
				}
				else
				{
					showCheckersPlayerTurn()
					loop 32
						showCheckersGamePieces(a_index)
					continue
				}
				
			}
			else
			{
				;msgbox,,, jump(%checkjump%),3
				if(checkerbox%checkjump%.Owner == 2)
				{
					if(checkerbox%startcontrol%.Kinged == 1)
					{
						checkerbox%endcntrl%.Kinged := 1
						checkerbox%startcontrol%.Kinged := 0
					}
					else
					{
						if(startcontrol > endcntrl)
						{
							msgbox,,,bad jump here p1
						}
					}
					checkerbox%startcontrol%.Owner := 0
					checkerbox%startcontrol%.Status := "Blank"
					checkerbox%endcntrl%.ID := checkerbox%startcontrol%.ID
					checkerbox%startcontrol%.ID := 0
					checkerbox%endcntrl%.Owner := 1
					checkerbox%endcntrl%.Status := "Active"
					checkerbox%checkjump%.Status := "Blank"
					checkerbox%checkjump%.Owner := 0
					if(checkerbox%checkjump%.Kinged == 1)
						p1scoretotal := p1scoretotal + 5000
					else
						p1scoretotal := p1scoretotal + 1000
					if(endcntrl == 29) || (endcntrl == 30) || (endcntrl == 31) || (endcntrl == 32)
						checkerbox%endcntrl%.Kinged := 1
					if(checkerbox%checkjump%.ID != 0)
						checkerbox%checkjump%.ID := 0
					loop 32
						showCheckersGamePieces(a_index)
					sleep 1000
					nextadd := 7
					loop 2
					{
						posmoves := 
						newendcntrl := endcntrl + nextadd
						jumpcheck := CheckJumpMove(endcntrl, newendcntrl) ; -----------  need work here  -----------------------
						if(jumpcheck != 0)
						{
							if(checkerbox%newendcntrl%.Owner == 0)
							{
								if(checkerbox%jumpcheck%.Owner == 2)
								{
									;msgbox,,, continue jump,3
									if(checkerbox%endcntrl%.Kinged == 1)
									{
										checkerbox%newendcntrl%.Kinged := 1
										checkerbox%endcntrl%.Kinged := 0
									}
									checkerbox%endcntrl%.Owner := 0
									checkerbox%endcntrl%.Status := "Blank"
									checkerbox%newendcntrl%.ID := checkerbox%endcntrl%.ID
									checkerbox%endcntrl%.ID := 0
									checkerbox%newendcntrl%.Owner := 1
									checkerbox%newendcntrl%.Status := "Active"
									checkerbox%jumpcheck%.Status := "Blank"
									checkerbox%jumpcheck%.Owner := 0
									if(checkerbox%jumpcheck%.Kinged == 1)
										p1scoretotal := p1scoretotal + 5000
									else
										p1scoretotal := p1scoretotal + 1000
									if(newendcntrl == 29) || (newendcntrl == 30) || (newendcntrl == 31) || (newendcntrl == 32)
										checkerbox%newendcntrl%.Kinged := 1
									if(checkerbox%jumpcheck%.ID != 0)
										checkerbox%jumpcheck%.ID := 0
									loop 32
										showCheckersGamePieces(a_index)
									break
								}
							}
						}
						nextadd += 2
					}
					if(p1remainingleft == 0)
						WinningPlayer := 2
					else if(p2remainingleft == 0)
						WinningPlayer := 1
					if(WinningPlayer != 0)
						break
					break
				}
			}
		}
		if(WinningPlayer != 0)
		{
			guicontrol, hide, Position1Turn
			guicontrol,, Position1Turn,% Plyr%WinningPlayer%Name " Wins"
			guicontrol, show, Position1Turn
			return
		}
		PlayerNumber := switchplayer(PlayerNumber)
		showCheckersPlayerTurn()
		findCheckersRemaining()
		showCheckersRemaining()
		showCheckersScore()
		ComputerTurn(0)
	}
	if(WhichGame == 4) ; ------ needs work still -------   ???????   ----------- 
	{
		onmessage(0x200, "WM_MOUSEHOVER")
		
		comparecntrl := "Static23"
		cnt := 1
		p1cards := 0
		p2cards := 0
		p1used := 0
		p2used := 0	
		
		ifwinactive, War V_%WVersion%
		{
			keywait, LButton, d
			;keywait, Enter, t, 10
		}
		else
		{
			WinWaitActive, War V_%WVersion%
			keywait, LButton, d
			;keywait, Enter, t, 10
		}
		mousegetpos, mxpos, mypos,, curcntrl
		
		if(curcntrl == comparecntrl)
		{
			GetKeyState, ButtonState, LButton, p
			if(ButtonState == "U")
				mousegetpos, mxpos, mypos,, nexcntrl
				
			loop
			{
				pos1card := RandomNumberGen()
				az := GenChecker(pos1card)
				;msgbox,,,az(%az%)
				if(az == false)
				{
					if(card%pos1card%.PHand == 1)
					{
						card%pos1card%.Used := true			
						pos1battle := card%pos1card%.Value
						pic := card%pos1card%.Pic
						guicontrol, hide, pic4p1war
						guicontrol,, pic4p1war, res\War\warcards\%pic%
						guicontrol, show, pic4p1war
						break
					}
				}
				checkHandReset()
			}
		}
		if(GameType == 2)
			EndTurn()
		else
		{
			sleep 750
			hideWarPlyrTurn()
			PlayerNumber := switchposdeal(PlayerNumber)
			showWarPlyrTurn()
			findplayercardsleft()
			showPlayercardsleftnum()
			sleep 1000
		}
		ComputerTurn(0)
	}
	
	return 
}
