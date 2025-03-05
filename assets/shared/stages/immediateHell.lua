local bgs = 'bgs/newbgtest/'

function onCreate()
--bloodshed
   	makeLuaSprite('red', '', -300, -500);
        makeGraphic('red',4000,4000,'ff0000')
	setScrollFactor('red', 0, 0);

	makeLuaSprite('2newsky', bgs..'bloodshed/bloodshed_sky', -600, -350);
	setScrollFactor('2newsky', 0.5, 0.5);

	makeLuaSprite('2newstreet', bgs..'bloodshed/bloodshed_street', -600, -350);
	setScrollFactor('2newstreet', 1, 1);

	makeLuaSprite('2city', bgs..'bloodshed/bloodshed_city', -600, -350);
	setScrollFactor('2city', 0.5, 0.5);

	makeLuaSprite('2hillfront', bgs..'bloodshed/bloodshed_hillfront', -600, -350);
	setScrollFactor('2hillfront', 0.6, 0.6);

	makeLuaSprite('2mountains', bgs..'bloodshed/bloodshed_mountains', -600, -350);
	setScrollFactor('2mountains', 0.5, 0.5);

	makeLuaSprite('2mountainsback', bgs..'bloodshed/bloodshed_mountainsback', -600, -350);
	setScrollFactor('2mountainsback', 0.5, 0.5);

	makeLuaSprite('hellsatan', 'bgs/hellRon_satan', -50, 500);
	setScrollFactor('hellsatan', 0, 0);
	scaleObject('hellsatan', 1.2, 1.2);
	setProperty('hellsatan.alpha', 0)

	makeAnimatedLuaSprite('rain','bgs/annoyed_rain',-775,-2500)
	addAnimationByPrefix('rain','animated','rain',24,true)
	scaleObject('rain', 5, 5);
	setScrollFactor('rain', 0, 0);
	setObjectCamera('rain', 'camgame');
	setProperty('rain.alpha', 1)

	makeAnimatedLuaSprite('boom',bgs..'bloodshed/explosion',-300, -270)
	addAnimationByPrefix('boom','explosion','explosion',24,false)
	setScrollFactor('boom', 0, 0);
	scaleObject('boom', 1.2, 1.2);
	addLuaSprite('boom', true)
	setProperty('boom.alpha',0)
	setObjectCamera('boom','camOther')

	makeLuaSprite('newstreet2', bgs..'bloodshed/bloodshed_streetBroken', -600, -2000);

	makeLuaSprite('deadly', 'bgs/deadly', -700, -350);
	setLuaSpriteScrollFactor('deadly', 0, 0);
	--setObjectOrder('deadly', 7)
	scaleObject('deadly', 1, 1)
	setObjectCamera('deadly', 'camgame');
	setProperty('deadly.alpha', 0)

	makeAnimatedLuaSprite('fire','bgs/escape_fire',-500,-400)
	addAnimationByPrefix('fire','animated','fire',24,true)
	scaleObject('fire', 4.6, 4.6);
	setScrollFactor('fire', 0, 0);
	setProperty('fire.alpha', 0)

	makeAnimatedLuaSprite('lava',bgs..'bloodshed/lava',100,-3000)
	addAnimationByPrefix('lava','animated','lava',24,true)
	scaleObject('lava', 2, 2);
	setScrollFactor('lava', 0, 0);
	setProperty('lava.alpha', 0)

	makeLuaSprite('allwhite', '', 0, 0)
	setScrollFactor('allwhite', 0, 0)
	makeGraphic('allwhite', 3840, 2160, 'FFFFFF')
	setProperty('allwhite.alpha', 0)
	screenCenter('allwhite', 'xy')

	makeLuaSprite('effect', 'bgs/effect', -2530, -1350);
	setLuaSpriteScrollFactor('effect', 0, 0);
	scaleObject('effect', 2.5, 2.5)
	setObjectCamera('effect', 'camgame');
	setProperty('effect.alpha', 0)


    addLuaSprite('red', false);
	addLuaSprite('2newsky', false);
	addLuaSprite('lava', false);
	addLuaSprite('2city', false);
	addLuaSprite('2mountainsback', false);
	addLuaSprite('2mountains', false);
	addLuaSprite('2hillfront', false);
	addLuaSprite('2newstreet', false);
	addLuaSprite('fire', false);
	addLuaSprite('hellsatan', false);
	addLuaSprite('newstreet2', false);
	addLuaSprite('deadly', true);
	addLuaSprite('effect', true);
	addLuaSprite('rain', true);      
	addLuaSprite('flash', true);


end

local fast = 4
local speedy = 0.125
enabled = false
haha = 500
circlelol = 160
win1 = -2
win2 = -12

function onUpdate()
	health = getProperty('health')
	songPos = getSongPosition()
	local b = songPos / 1000 * bpm / 200
        local currentBeat = (songPos/100)/(curBpm/200)
        currentBeat2 = (songPos / haha) * (bpm / 200)
		currentBeat3 = (songPos / 1000) * (bpm / 60)
    if curStep == 256 then
	noteTweenX('oppo0', 0, -1000, 1.5, 'linear')
	noteTweenX('oppo1', 1, -1000, 1.5, 'linear')
	noteTweenX('oppo2', 2, -1000, 1.5, 'linear')
	noteTweenX('oppo3', 3, -1000, 1.5, 'linear')
	noteTweenAngle('opporotate0', 0, 360, 1, 'linear')
	noteTweenAngle('opporotate1', 1, 360, 1, 'linear')
	noteTweenAngle('opporotate2', 2, 360, 1, 'linear')
	noteTweenAngle('opporotate3', 3, 360, 1, 'linear')
	noteTweenX('play0', 4, 415, 1, 'linear')
	noteTweenX('play1', 5, 525, 1, 'linear')
	noteTweenX('play2', 6, 635, 1, 'linear')
	noteTweenX('play3', 7, 745, 1, 'linear')
end

    if curStep == 383 then
	doTweenAlpha('fire1', 'fire', 1, 0.01, 'linear')
	doTweenAlpha('deadly1', 'deadly', 0.8, 0.01, 'linear')
	doTweenY('dady', 'dad', -1800, 0.001, 'sineInOut')
	doTweenY('bfy', 'boyfriend', -1150, 0.001, 'sineInOut')
	setProperty('boyfriend.x',1300);
	setProperty('dad.x',-750);
end
    if curStep == 384 then
  	setProperty('gf.alpha', 0);
	doTweenAlpha('2city1', '2city', 0, 0.01, 'linear')
	doTweenAlpha('2mountainsback1', '2mountainsback', 0, 0.01, 'linear')
	doTweenAlpha('2mountains1', '2mountains', 0, 0.01, 'linear')
	doTweenAlpha('2hillfront1', '2hillfront', 0, 0.01, 'linear')
	doTweenAlpha('2newstreet', '2newstreet', 0, 0.01, 'linear')
	doTweenAlpha('hellsatan1', 'hellsatan', 1, 0.01, 'linear')
	doTweenAlpha('2newsky', '2newsky', 0, 0.01, 'linear')
        doTweenY('hellsatan', 'hellsatan', -350, 0.5, 'circOut');
	doTweenColor('badapplexd', 'hellsatan', '000000', 0.001, 'linear')
end
    if curStep >= 385 and curStep <= 1920 then
	setProperty('hellsatan.angle', b*math.pi*circlelol*(fast/4))
end
    if curStep >= 385 and curStep <= 639 then
        --setProperty('camGame.angle',0 - win1 * math.cos((currentBeat2*0.4)*math.pi) )
        --setProperty('camHUD.angle',0 - win2 * math.cos((currentBeat2*0.4)*math.pi) )
		setProperty('camGame.angle', 4* math.sin((currentBeat3/4) * math.pi) )
		setProperty('camHUD.angle', 22* math.sin((currentBeat3/4) * math.pi) )
end
    if curStep == 639 then
	doTweenAngle('turn3', 'camGame', 0, 0.2, 'sineInOut')
	doTweenAngle('turn4', 'camHUD', 0, 0.2, 'sineInOut')
end
    if curStep >= 1408 and curStep <= 1664 then
	doTweenAlpha('red', 'red', 0, 0.01, 'linear')
        --setProperty('camGame.angle',0 - win1 * math.cos((currentBeat2*0.4)*math.pi) )
        --setProperty('camHUD.angle',0 - win2 * math.cos((currentBeat2*0.4)*math.pi) )
		setProperty('camGame.angle',4 * math.sin((currentBeat3/4) * math.pi) )
		setProperty('camHUD.angle',22 * math.sin((currentBeat3/4) * math.pi) )
end
	if curStep >= 1664 then
		setProperty('camGame.angle',9 * math.sin((currentBeat3/2) * math.pi) )
		setProperty('camHUD.angle',45 * math.sin((currentBeat3/2) * math.pi) )
end
    if curStep == 1408 then
	circlelol = 200
end
    if curStep == 1664 then
	doTweenAlpha('effect', 'effect', 1, 0.01, 'linear')
	doTweenAlpha('deadly', 'deadly', 0, 0.01, 'linear')
	circlelol = 280
	haha = 245
	win1 = -4
	win2 = -40
end
    if curStep == 1920 then
	doTweenAlpha('effect', 'effect', 0, 0.01, 'linear')
	doTweenAlpha('deadly', 'deadly', 0.8, 0.01, 'linear')
	doTweenAlpha('fire1', 'fire', 0, 0.01, 'linear')
        doTweenAngle('hellsatan', 'hellsatan', 0, -30, 'circInOut');
	doTweenColor('badapplexd', 'hellsatan', 'FFFFFF', 0.001, 'linear')
end
end


function onStepHit()
    if curStep == 383 or curStep == 1407 then
	triggerEvent('playsound','','')
	setProperty('boom.alpha',1)
	objectPlayAnimation('boom', 'explosion');
end
end


function opponentNoteHit()  
   triggerEvent('Screen Shake','0.2, 0.01','0.0,0.005')
    if getProperty('health') > 0.06 then
        addHealth(-0.05)
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

if n == 'playsound' then
	playSound('hellexplode',1)
end


end