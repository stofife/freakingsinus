
// Project: sinus Dubnicka 
// Created: 2020-09-18

// show all errors
SetErrorMode(2)

// set window properties
SetWindowTitle( "sinus Dubnicka" )
SetWindowSize( 854, 480, 0 )
SetWindowAllowResize( 1 ) // allow the user to resize the window
SetVirtualResolution( 854, 480 ) // doesn't have to match the window
UseNewDefaultFonts( 1 ) // since version 2.0.22 we can use nicer default fonts

CreateSprite(1710, 0)
SetSpriteSize(1710, 854, 480)
SetSpriteColor(1710, 22, 160, 240, 255)

CreateSprite(1711, 0)
SetSpriteSize(1711, 20, 20)
SetSpriteColor(1711, 150, 20, 50, 255)

h# = 0
ht# = 0
tweak = 0
fuckinhell# = 60.0
flip = 0

for i=1 to 854
		CreateSprite(i,0)
		SetSpriteColor(i, 0, 0, 153, 150)
		h# = sin(i/2+tweak)*80
		SetSpriteSize(i,1,h#+150)
		SetSpritePosition(i,i,480-GetSpriteHeight(i))
next

for i=855 to 1709
		CreateSprite(i,0)
		SetSpriteColor(i, 0, 100, 153, 100)
		ht# = sin(((i-854)/2)+tweak)*100
		SetSpriteSize(i,1,ht#+150)
		SetSpritePosition(i,i-854,480-getSpriteHeight(i-854))
next

do
	
	for i=1 to 854
		ht# = sin(i/2+(tweak/3))*((fuckinhell#/2)-10)
		h# = sin(i/2+(tweak/2))*fuckinhell#
		SetSpriteSize(i+854,1,ht#+120)
		SetSpriteSize(i,1,h#+150)
		SetSpritePosition(i+854,i,480-getSpriteHeight(i+854))
		SetSpritePosition(i,i,480-GetSpriteHeight(i))
		SetSpritePosition(1711, 400,480-getSpriteHeight(400+854)-20)
	next
	
	if fuckinhell# < 80 and flip = 0
		fuckinhell# = fuckinhell# + 0.1
	endif
	if fuckinhell# >= 80
		flip = 1
	endif
	if flip = 1
		fuckinhell# = fuckinhell# - 0.1
	endif
	if fuckinhell# <= 60
		flip = 0
	endif
	tweak = tweak + 1
    Sync()
loop
