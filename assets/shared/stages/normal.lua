
function onCreate()
	-- background shit
	makeLuaSprite('happyRon_ground', 'bgs/happyRon_ground', -600, -250);
	scaleObject('happyRon_ground', 1, 1);
	setScrollFactor('happyRon_ground', 1.1, 1.1);
	
	makeLuaSprite('happyRon_sky', 'bgs/happyRon_sky', -500, -300);
	scaleObject('happyRon_sky', 1.5, 1.5);
	setScrollFactor('happyRon_sky', 0.3, 0.3);

	makeLuaSprite('hellfront', 'hellfront', -900, -300);
	scaleObject('hellfront', 1, 1);
	setScrollFactor('hellfront', 1.1, 1.1);
	
	makeLuaSprite('hellsky', 'hellsky', -800, -150);
	scaleObject('hellsky', 1.5, 1.5);
	setScrollFactor('hellsky', 0.3, 0.3);

	makeLuaSprite('hellsatan', 'hellsatan', -100, -400);
	setScrollFactor('hellsatan', 0, 0);
	scaleObject('hellsatan', 1.3, 1.3);

	makeLuaText('funnikade', songName .. ' - ' .. difficultyName .. ' | KE 1.5.4 (ron eidtion)',getProperty('healthBarBG.width'), 5 ,10)
	setTextSize('funnikade', 16)
	setTextFont('funnikade', 'default.ttf')
	setTextBorder('funnikade', 1, '000000')

	addLuaSprite('happyRon_sky', false);
	addLuaSprite('happyRon_ground', false);
if songName == 'Ron-classic' then
	addLuaText('funnikade')
end
end

function onUpdate()
if songName == 'Ron-classic' then
	runHaxeCode([[game.iconP1.changeIcon('oldbf')]]);
end
end

function onEvent(n,v1,v2)

if n == 'Flash Screen' then

   makeLuaSprite('flash', '', 0, 0);

        makeGraphic('flash',1280,720,'ffffff')

      addLuaSprite('flash', true);

      setLuaSpriteScrollFactor('flash',0,0)

      setProperty('flash.scale.x',2)

      setProperty('flash.scale.y',2)

      setProperty('flash.alpha',0)

setProperty('flash.alpha',1)

doTweenAlpha('flTw','flash',0,v1,'linear')

end
end