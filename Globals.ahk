;AHK
;Copyright@2016 - 2018  Naythan Morey
;Email - Naythan.Morey@yahoo.com  

Global C4Version := 5.5
Global 3TVersion := 4.1
Global CVersion := 3.7
Global WVersion := 3.6
global Version := 2.3
Global C4GameLoaded := false
Global 3TGameLoaded := false
Global CheckersGameLoaded := false
Global WarGameLoaded := false
Global ChangingGames  := false
global msg1          := 
global msg2          :=
global msg3          :=
global msg4          :=
global msg5          :=
;                        ----------      Settings - ---------------
Global FirstRun
Global WhichGame
Global GameType
Global Difficulty
Global SoundAnswer
Global PlayerNumber
Global Plyr2First
Global CustomPictures
Global Plyr1Name := "Player 1"
Global Plyr1Name_TT := "Type Player 1's Name ."
Global Plyr2Name := "Computer"
Global Plyr2Name_TT := "Computer Player ."
;                    ------------------    Start Menu -------------------
Global StartScreenBorder1
Global StartScreenBorder2
Global StartScreenBorder3
Global StartScreenBorder4
Global StartPlayerBorder
Global PlayerStartingTxt
Global Settings
global Settings_TT := "Settings Screen ."
Global Exit
global Exit_TT := "Exit Game ."
Global GameTyp
;  ------------------------------ Tool Tips --------------------------
Global ShowAnimations
Global CurrControl
Global PrevControl
Global _TT
Global NewTip 
global curcntrl := 
global ButtonState := 
global mxpos :=
global mypos := 
; -------------------------------------  Setting Menu   ---------------------------
Global SettingsScreenBorder
Global WhichGameButton
global WhichGameButton_TT := "Toggle Game Type"
global NumberOfPlyrsButton
global NumberOfPlyrsButton_TT := "Player 1 Or Computer Starts The Game"
global DifficultyButton
global DifficultyButton_TT := "Toggle Game Difficuly"
global SoundAnswerButton
global SoundAnswerButton_TT := "Toggle Game Sounds On/Off"
global CustomPicturesButton
global CustomPicturesButton_TT:= "Use A Set Of Your Own Pictures For Game Pieces ."
global ReSetSettings1Button
global ReSetSettings1Button_TT := "Reset All Game Settings To Default ."
global ReSetSettings2Button
global ReSetSettings2Button_TT := "Reset All Game Settings To Default ."
global ReSetGameStatsButton
global ReSetGameStatsButton_TT := "Reset All Game Stats To Default ."
Global ShowAnimationsButton
Global ShowAnimationsButton_TT := "Toggle Game Animations On/Off ."
global BackButton
global BackButton_TT := "Go To Main Menu ."
; ------------------------------ C4 ----------------------------------------------------
global bx1               :=
global bx2               :=
global bx3               :=
global bx4               :=
global bx5               :=
global bx6               :=
global bx7               :=
global bx8               :=
global bx9               :=
global bx10              :=
global bx11              :=
global bx12              :=
global bx13              :=
global bx14              :=
global bx15              :=
global bx16              :=
global bx17              :=
global bx18              :=
global bx19              :=
global bx20              :=
global bx21              :=
global bx22              :=
global bx23              :=
global bx24              :=
global bx25              :=
global bx26              :=
global bx27              :=
global bx28              :=
global bx29              :=
global bx30              :=
global bx31              :=
global bx32              :=
global bx33              :=
global bx34              :=
global bx35              :=
global bx36              :=
global bx37              :=
global bx38              :=
global bx39              :=
global bx40              :=
global bx41              :=
global bx42              :=
global GameName
global GameInfo
global EndTxt
global reply
global Sett
global Ext
global player1piece   :=
global player2piece    := 
global Plyr1Turn
global Plyr2Turn
global reply_TT := "Re-Play Game Same Settings ."
global player1piece_TT := "Please Click Left Mouse Button And Hold To Move Piece To Square, Then Release To Place Piece ."
global box1               := []
global box2               := []
global box3               := []
global box4               := []
global box5               := []
global box6               := []
global box7               := []
global box8               := []
global box9               := []
global box10              := []
global box11              := []
global box12              := []
global box13              := []
global box14              := []
global box15              := []
global box16              := []
global box17              := []
global box18              := []
global box19              := []
global box20              := []
global box21              := []
global box22              := []
global box23              := []
global box24              := []
global box25              := []
global box26              := []
global box27              := []
global box28              := []
global box29              := []
global box30              := []
global box31              := []
global box32              := []
global box33              := []
global box34              := []
global box35              := []
global box36              := []
global box37              := []
global box38              := []
global box39              := []
global box40              := []
global box41              := []
global box42              := []
global bluepicture        := "res\C4\blue.png"
global redpicture         := "res\C4\red.png"
global box1picb           :=
global box1picr           :=
global box2picb           :=
global box2picr           :=
global box3picb           :=
global box3picr           :=
global box4picb           :=
global box4picr           :=
global box5picb           :=
global box5picr           :=
global box6picb           :=
global box6picr           :=
global box7picb           :=
global box7picr           :=
global box8picb           :=
global box8picr           :=
global box9picb           :=
global box9picr           :=
global box10picb          :=
global box10picr          :=
global box11picb          :=
global box11picr          :=
global box12picb          :=
global box12picr          :=
global box13picb          :=
global box13picr          :=
global box14picb          :=
global box14picr          :=
global box15picb          :=
global box15picr          :=
global box16picb          :=
global box16picr          :=
global box17picb          :=
global box17picr          :=
global box18picb          :=
global box18picr          :=
global box19picb          :=
global box19picr          :=
global box20picb          :=
global box20picr          :=
global box21picb          :=
global box21picr          :=
global box22picb          :=
global box22picr          :=
global box23picb          :=
global box23picr          :=
global box24picb          :=
global box24picr          :=
global box25picb          :=
global box25picr          :=
global box26picb          :=
global box26picr          :=
global box27picb          :=
global box27picr          :=
global box28picb          :=
global box28picr          :=
global box29picb          :=
global box29picr          :=
global box30picb          :=
global box30picr          :=
global box31picb          :=
global box31picr          :=
global box32picb          :=
global box32picr          :=
global box33picb          :=
global box33picr          :=
global box34picb          :=
global box34picr          :=
global box35picb          :=
global box35picr          :=
global box36picb          :=
global box36picr          :=
global box37picb          :=
global box37picr          :=
global box38picb          :=
global box38picr          :=
global box39picb          :=
global box39picr          :=
global box40picb          :=
global box40picr          :=
global box41picb          :=
global box41picr          :=
global box42picb          :=
global box42picr          :=
global p1stats
global p2stats
global p1tgp
global p1gw
global p1gl
global p1dg
global p2tgp
global p2gw
global p2gl
global p2dg
global p1tgptxt
global p1gwtxt
global p1gltxt
global p2tgptxt
global p2gwtxt
global p2gltxt
global p1dgtxt
global p2dgtxt
global C4TGamesp1    := 
global C4TGamesp2    := 
global C4WGamesp1    := 
global C4WGamesp2    := 
global C4LGamesp1    := 
global C4LGamesp2    := 
global C4DGamesp1    := 
global C4DGamesp2    := 
global WinningPlayer  := 0
; -------------------------------------------   3T    -----------------------------------------------------
global folderselected       := 
global WINNER               := false
global DRAWGAME             := false
global EndSettings := false
global Xpicture    := "res\3T\x.png"
global Opicture    := "res\3T\o.png" 
global GameTxt     := 
global OverTxt     := 
global GameInfo    :=
global 3Tp1piece   :=
global 3Tp2piece   :=
global Tbox1 := []
global Tbox2 := []
global Tbox3 := []
global Tbox4 := []
global Tbox5 := []
global Tbox6 := []
global Tbox7 := []
global Tbox8 := []
global Tbox9 := []
global boardbox1
global boardbox2
global boardbox3
global boardbox4
global boardbox5
global boardbox6
global boardbox7
global boardbox8
global boardbox9
global GameInfoBorder
global Pl1Stats
global Pl2Stats
global Pl3Stats
global anp1
global anp2
global anp3
global plyr1firsttxt
global plyr2firsttxt
global Replyy	
global Replyy_TT := "Main Menu ."
global Set
global Set_TT := "Return To Setings Menu"
global Extt
global Extt_TT := "Exit Game"
global b1x         :=
global b1o         :=
global b2x         :=
global b2o         :=
global b3x         :=
global b3o         :=
global b4x         :=
global b4o         :=
global b5x         :=
global b5o         :=
global b6x         :=
global b6o         :=
global b7x         :=
global b7o         :=
global b8x         :=
global b8o         :=
global b9x         :=
global b9o         :=
global winpic1     :=
global winpic2     :=
global losspic1    :=
global losspic2    :=
global drawpic1    :=
global drawpic2    :=
global drawpic3    :=
global drawpic4    :=
global drawpic5    :=
global drawpic6    :=
global drawpic7    :=
global drawpic8    :=
global drawpic9    :=
global drawpic10   :=
global 3TTGamesp1    := 
global 3TTGamesp2    := 
global 3TWGamesp1    := 
global 3TWGamesp2    := 
global 3TLGamesp1    := 
global 3TLGamesp2    := 
global 3TDGamesp1    := 
global 3TDGamesp2    := 
global 3TTGPp1       :=
global 3TTGPp2       :=
global 3TTGWp1       :=
global 3TTGWp2       :=
global 3TTGLp1       :=
global 3TTGLp2       :=
global 3TTDGp1       :=  
global 3TTDGp2       :=
global 3TTGPp1txt    :=
global 3TTGPp2txt    :=
global 3TTGWp1txt    :=
global 3TTGWp2txt    :=
global 3TTGLp1txt    :=
global 3TTGLp2txt    :=
global 3TTDGp1txt    :=
global 3TTDGp2txt    :=
global Replyy       :=
global Set         :=
global Extt        :=
global AnimateRow  :=
global AnimateNumber :=
global GameComplete := false
;   ----------------------------   Checkers    ---------------------------------------------------------
global PositionBorder1    :=
global PositionBorder2    := 
global PositionBorder3    := 
global PositionBorder4    :=
global Position1Turn   :=
global Position2Turn   := 
global Position3Turn   :=
global p1remaining      :=
global p2remaining      :=
global p1remainingtxt      :=
global p2remainingtxt      :=
global p1remainingleft      :=
global p2remainingleft      :=
global p1score           :=
global p2score           := 
global p1scoretxt           :=
global p2scoretxt           := 
global p1scoretotal           :=
global p2scoretotal           := 
global Creply           :=
global exitt            := 
global Mmenu            :=
global cbxmain     :=
global cbx1  := 1
global cbx2  := 1
global cbx3  := 1
global cbx4  := 1
global cbx5  := 1
global cbx6  := 1
global cbx7  := 1
global cbx8  := 1
global cbx9  := 1
global cbx10  := 1
global cbx11  := 1
global cbx12  := 1
global cbx13  := 0
global cbx14  := 0
global cbx15  := 0
global cbx16  := 0
global cbx17  := 0
global cbx18  := 0
global cbx19  := 0
global cbx20  := 0
global cbx21  := 2
global cbx22  := 2
global cbx23  := 2
global cbx24  := 2
global cbx25  := 2
global cbx26  := 2
global cbx27  := 2
global cbx28  := 2
global cbx29  := 2
global cbx30  := 2
global cbx31  := 2
global cbx32  := 2
checkerbox1 := []
checkerbox2 := []
checkerbox3 := []
checkerbox4 := []
checkerbox5 := []
checkerbox6 := []
checkerbox7 := []
checkerbox8 := []
checkerbox9 := []
checkerbox10 := []
checkerbox11 := []
checkerbox12 := []
checkerbox13 := []
checkerbox14 := []
checkerbox15 := []
checkerbox16 := []
checkerbox17 := []
checkerbox18 := []
checkerbox19 := []
checkerbox20 := []
checkerbox21 := []
checkerbox22 := []
checkerbox23 := []
checkerbox24 := []
checkerbox25 := []
checkerbox26 := []
checkerbox27 := []
checkerbox28 := []
checkerbox29 := []
checkerbox30 := []
checkerbox31 := []
checkerbox32 := []

global CTGPp1txt     :=
global CTGWp1txt     :=
global CTGLp1txt     :=
global CTGPp1     :=
global CTGWp1     :=
global CTGLp1     :=
global CTGPp2txt     :=
global CTGWp2txt     :=
global CTGLp2txt     :=
global CTGPp2     :=
global CTGWp2     :=
global CTGLp2     :=
global CTGamesp1    := 
global CTGamesp2    := 
global CWGamesp1    := 
global CWGamesp2    := 
global CLGamesp1    := 
global CLGamesp2    := 
global pos1pic     := "res\Checkers\red.png"
global pos2pic     := "res\Checkers\blue.png"
global pos1kpic    := "res\Checkers\redking.png"
global pos2kpic    := "res\Checkers\blueking.png"
global PlyrPiece1   := 
global PlyrPiece2   :=
global p1pic1      :=
global p2pic1      :=
global p1pic2      :=
global p2pic2      :=
global p1pic3      :=
global p2pic3      :=
global p1pic4      :=
global p2pic4      :=
global p1pic5      :=
global p2pic5      :=
global p1pic6      :=
global p2pic6      :=
global p1pic7      :=
global p2pic7      :=
global p1pic8      :=
global p2pic8      :=
global p1pic9      :=
global p2pic9      :=
global p1pic10      :=
global p2pic10      :=
global p1pic11      :=
global p2pic11      :=
global p1pic12      :=
global p2pic12      :=
global p1pic13      :=
global p2pic13      :=
global p1pic14      :=
global p2pic14      :=
global p1pic15      :=
global p2pic15      :=
global p1pic16      :=
global p2pic16      :=
global p1pic17      :=
global p2pic17      :=
global p1pic18      :=
global p2pic18      :=
global p1pic19      :=
global p2pic19      :=
global p1pic20      :=
global p2pic20      :=
global p1pic21      :=
global p2pic21      :=
global p1pic22      :=
global p2pic22      :=
global p1pic23      :=
global p2pic23      :=
global p1pic24      :=
global p2pic24      :=
global p1pic25      :=
global p2pic25      :=
global p1pic26      :=
global p2pic26      :=
global p1pic27      :=
global p2pic27      :=
global p1pic28      :=
global p2pic28      :=
global p1pic29      :=
global p2pic29      :=
global p1pic30      :=
global p2pic30      :=
global p1pic31      :=
global p2pic31      :=
global p1pic32      :=
global p2pic32      :=
global kp1pic1      :=
global kp2pic1      :=
global kp1pic2      :=
global kp2pic2      :=
global kp1pic3      :=
global kp2pic3      :=
global kp1pic4      :=
global kp2pic4      :=
global kp1pic5      :=
global kp2pic5      :=
global kp1pic6      :=
global kp2pic6      :=
global kp1pic7      :=
global kp2pic7      :=
global kp1pic8      :=
global kp2pic8      :=
global kp1pic9      :=
global kp2pic9      :=
global kp1pic10      :=
global kp2pic10      :=
global kp1pic11      :=
global kp2pic11      :=
global kp1pic12      :=
global kp2pic12      :=
global kp1pic13      :=
global kp2pic13      :=
global kp1pic14      :=
global kp2pic14      :=
global kp1pic15      :=
global kp2pic15      :=
global kp1pic16      :=
global kp2pic16      :=
global kp1pic17      :=
global kp2pic17      :=
global kp1pic18      :=
global kp2pic18      :=
global kp1pic19      :=
global kp2pic19      :=
global kp1pic20      :=
global kp2pic20      :=
global kp1pic21      :=
global kp2pic21      :=
global kp1pic22      :=
global kp2pic22      :=
global kp1pic23      :=
global kp2pic23      :=
global kp1pic24      :=
global kp2pic24      :=
global kp1pic25      :=
global kp2pic25      :=
global kp1pic26      :=
global kp2pic26      :=
global kp1pic27      :=
global kp2pic27      :=
global kp1pic28      :=
global kp2pic28      :=
global kp1pic29      :=
global kp2pic29      :=
global kp1pic30      :=
global kp2pic30      :=
global kp1pic31      :=
global kp2pic31      :=
global kp1pic32      :=
global kp2pic32      :=
global moving1      := 
global moving2      :=
global moving1k      := 
global moving2k      :=
global ply1 := 1
global ply2 := 2
;  ------------------------------------- war card game    ---------------------------------------------------------------------------
global WarPlyrBorder1    :=
global WarPlyrBorder2    :=
global P1But    :=
global P2But    :=
global WarTimes := 0
global warpic   := "res\War\war.png"
global pic1p1war   :=
global pic2p1war   :=
global pic3p1war   :=
global pic4p1war   :=
global pic1p2war   :=
global pic2p2war   :=
global pic3p2war   :=
global pic4p2war   :=
global WarPl1Turn  :=
global WarPl2Turn  :=
global 1clubs := "1clubs.png"
global 1clubsnumber := 1
global 2clubs := "2clubs.png"
global 2clubsnumber := 2
global 3clubs := "3clubs.png"
global 3clubsnumber := 3
global 4clubs := "4clubs.png"
global 4clubsnumber := 4
global 5clubs := "5clubs.png"
global 5clubsnumber := 5
global 6clubs := "6clubs.png"
global 6clubsnumber := 6
global 7clubs := "7clubs.png"
global 7clubsnumber := 7
global 8clubs := "8clubs.png" 
global 8clubsnumber := 8
global 9clubs := "9clubs.png"
global 9clubsnumber := 9
global 10clubs := "10clubs.png"
global 10clubsnumber := 10
global 11clubs := "11clubs.png"
global 11clubsnumber := 11
global 12clubs := "12clubs.png"
global 12clubsnumber := 12
global 13clubs := "13clubs.png"
global 13clubsnumber := 13
global 1hearts := "1hearts.png"
global 1heartsnumber := 14
global 2hearts := "2hearts.png"
global 2heartsnumber := 15
global 3hearts := "3hearts.png"
global 3heartsnumber := 16
global 4hearts := "4hearts.png"
global 4heartsnumber := 17
global 5hearts := "5hearts.png"
global 5heartsnumber := 18
global 6hearts := "6hearts.png"
global 6heartsnumber := 19
global 7hearts := "7hearts.png"
global 7heartsnumber := 20
global 8hearts := "8hearts.png" 
global 8heartsnumber := 21
global 9hearts := "9hearts.png"
global 9heartsnumber := 22
global 10hearts := "10hearts.png"
global 10heartsnumber := 23
global 11hearts := "11hearts.png"
global 11heartsnumber := 24
global 12hearts := "12hearts.png"
global 12heartsnumber := 25
global 13hearts := "13hearts.png"
global 13heartsnumber := 26
global 1spades := "1spades.png"
global 1spadesnumber := 27
global 2spades := "2spades.png"
global 2spadesnumber := 28
global 3spades := "3spades.png"
global 3spadesnumber := 29
global 4spades := "4spades.png"
global 4spadesnumber := 30
global 5spades := "5spades.png"
global 5spadesnumber := 31
global 6spades := "6spades.png"
global 6spadesnumber := 32
global 7spades := "7spades.png"
global 7spadesnumber := 33
global 8spades := "8spades.png" 
global 8spadesnumber := 34
global 9spades := "9spades.png"
global 9spadesnumber := 35
global 10spades := "10spades.png"
global 10spadesnumber := 36
global 11spades := "11spades.png"
global 11spadesnumber := 37
global 12spades := "12spades.png"
global 12spadesnumber := 38
global 13spades := "13spades.png"
global 13spadesnumber := 39
global 1diamonds := "1diamonds.png"
global 1diamondsnumber := 40
global 2diamonds := "2diamonds.png"
global 2diamondsnumber := 41
global 3diamonds := "3diamonds.png"
global 3diamondsnumber := 42
global 4diamonds := "4diamonds.png"
global 4diamondsnumber := 43
global 5diamonds := "5diamonds.png"
global 5diamondsnumber := 44
global 6diamonds := "6diamonds.png"
global 6diamondsnumber := 45
global 7diamonds := "7diamonds.png"
global 7diamondsnumber := 46
global 8diamonds := "8diamonds.png" 
global 8diamondsnumber := 47
global 9diamonds := "9diamonds.png"
global 9diamondsnumber := 48
global 10diamonds := "10diamonds.png"
global 10diamondsnumber := 49
global 11diamonds := "11diamonds.png"
global 11diamondsnumber := 50
global 12diamonds := "12diamonds.png"
global 12diamondsnumber := 51
global 13diamonds := "13diamonds.png"
global 13diamondsnumber := 52
global card1 := {}
global card2 := {}
global card3 := {}
global card4 := {}
global card5 := {}
global card6 := {}
global card7 := {}
global card8 := {}
global card9 := {}
global card10 := {}
global card11 := {}
global card12 := {}
global card13 := {}
global card14 := {}
global card15 := {}
global card16 := {}
global card17 := {}
global card18 := {}
global card19 := {}
global card20 := {}
global card21 := {}
global card22 := {}
global card23 := {}
global card24 := {}
global card25 := {}
global card26 := {}
global card27 := {}
global card28 := {}
global card29 := {}
global card30 := {}
global card31 := {}
global card32 := {}
global card33 := {}
global card34 := {}
global card35 := {}
global card36 := {}
global card37 := {}
global card38 := {}
global card39 := {}
global card40 := {}
global card41 := {}
global card42 := {}
global card43 := {}
global card44 := {}
global card45 := {}
global card46 := {}
global card47 := {}
global card48 := {}
global card49 := {}
global card50 := {}
global card51 := {}
global card52 := {}
global number1 := 0
global number2 := 0
global number3 := 0
global number4 := 0
global number5 := 0
global number6 := 0
global number7 := 0
global number8 := 0
global number9 := 0
global number10 := 0
global number11 := 0
global number12 := 0
global number13 := 0
global number14 := 0
global number15 := 0
global number16 := 0
global number17 := 0
global number18 := 0
global number19 := 0
global number20 := 0
global number21 := 0
global number22 := 0
global number23 := 0
global number24 := 0
global number25 := 0
global number26 := 0
global number27 := 0
global number28 := 0
global number29 := 0
global number30 := 0
global number31 := 0
global number32 := 0
global number33 := 0
global number34 := 0
global number35 := 0
global number36 := 0
global number37 := 0
global number38 := 0
global number39 := 0
global number40 := 0
global number41 := 0
global number42 := 0
global number43 := 0
global number44 := 0
global number45 := 0
global number46 := 0
global number47 := 0
global number48 := 0
global number49 := 0
global number50 := 0
global number51 := 0
global number52 := 0
global pos1battle    :=
global pos2battle    :=
global pos1totalcardstxt := 26
global pos2totalcardstxt := 26
global cardvalue :=
global pos1cardsleft := 
global pos2cardsleft :=
global pos1totalcards := 
global pos2totalcards := 
global pos1card :=
global pos2card := 
global WarTGPp1txt     :=
global WarTGWp1txt     :=
global WarTGLp1txt     :=
global WarTGPp1     :=
global WarTGWp1     :=
global WarTGLp1     :=
global WarTGPp2txt     :=
global WarTGWp2txt     :=
global WarTGLp2txt     :=
global WarTGPp2     :=
global WarTGWp2     :=
global WarTGLp2     :=
global WarTGamesp1    := 
global WarTGamesp2    := 
global WarWGamesp1    := 
global WarWGamesp2    := 
global WarLGamesp1    := 
global WarLGamesp2    :=