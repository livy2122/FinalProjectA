
 local composer = require( "composer" )
 
 display.setStatusBar(display.HiddenStatusBar)


 composer.gotoScene ("game")

 local music
 music = audio.loadStream("poker.mp3")
 audio.play( music )
