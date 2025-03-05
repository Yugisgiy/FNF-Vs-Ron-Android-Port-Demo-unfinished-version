
function onCreate()
	-- background shit
	makeLuaSprite('ground', 'bgs/hellRon_ground', -500, -290);
	scaleObject('ground', 1, 1);
	setScrollFactor('ground', 1.1, 1.1);
	
	makeLuaSprite('sky', 'bgs/hellRon_sky', -500, -340);
	scaleObject('sky', 1, 1);
	setScrollFactor('sky', 0.3, 0.3);

	makeLuaSprite('cloud', 'bgs/hellRon_clouds', -500, -340);
	scaleObject('cloud', 1, 1);
	setScrollFactor('cloud', 0.3, 0.3);

	makeLuaSprite('hellsatan', 'bgs/hellRon_satan', -100, -400);
	setScrollFactor('hellsatan', 0, 0);
	scaleObject('hellsatan', 1.3, 1.3);

	makeAnimatedLuaSprite('fire','bgs/escape_fire',-400,-700)
	addAnimationByPrefix('fire','animated','fire',24,true)
	scaleObject('fire', 4.6, 4.6);
	setScrollFactor('fire', 0, 0);
	setProperty('fire.alpha', 0)

	--makeAnimatedLuaSprite('rain','bgs/annoyed_rain',-775,-2500)
	addAnimationByPrefix('rain','animated','rain',24,true)
	scaleObject('rain', 5, 5);
	setScrollFactor('rain', 0, 0);
	setObjectCamera('rain', 'camgame');
	setProperty('rain.alpha', 0)

	makeLuaText('funnikade', songName .. ' - ' .. difficultyName .. ' | KE 1.5.4 (ron eidtion)',getProperty('healthBarBG.width'), 5 ,10)
	setTextSize('funnikade', 16)
	setTextFont('funnikade', 'default.ttf')
	setTextBorder('funnikade', 1, '000000')
	
	makeLuaSprite('deadly', 'bgs/deadly', -700, -350);
	setLuaSpriteScrollFactor('deadly', 0, 0);
	scaleObject('deadly', 1, 1)
	setObjectCamera('deadly', 'camgame');

    --runTimer('start', 0.5)

	addLuaSprite('sky', false);
	addLuaSprite('fire', false);
	addLuaSprite('hellsatan', false);
	addLuaSprite('cloud', false);
	addLuaSprite('ground', false);
	addLuaSprite('deadly', true);
	addLuaSprite('rain', true);
        addLuaSprite('flash', true);
if songName == 'bloodshed-classic' or songName == 'Bleeding-classic' then
	addLuaText('funnikade')
end
end

local uwu = 0.015
local UNFORGIVING = false
local fast = 4
local speedy = 0.125
local windowmove = false
local cameramove = false

function onUpdate()
    health = getProperty('health')
    songPos = getSongPosition()
    local currentBeat = (songPos/100)/(curBpm/bpm)
    currentBeat2 = (songPos / 1000) * (bpm / bpm)
    local currentBeat3 = (songPos / 1000)*(bpm/60)
    local b = songPos / 1000 * bpm / bpm

    setProperty('deadly.alpha',(((2-getProperty('health'))/3)+0.2))
    setProperty('iconP2.alpha', (2-(getProperty('health'))-0.25)/2+0.2)
    setProperty('iconP1.alpha', (getProperty('health')-0.25)/2+0.2)
    setProperty('healthBarBG.alpha',0)
    setProperty('healthBar.alpha',0)

if songName == 'bloodshed-classic' or songName == 'Bleeding-classic' then
	runHaxeCode([[game.iconP1.changeIcon('oldbf')]]);
end
if songName == 'bloodshed-classic' then
if curStep >= 288 and curStep <= 543 then
	doTweenAlpha('fire1', 'fire', 1, 0.5, 'linear')
	doTweenAlpha('rain1', 'rain', 1, 0.01, 'linear')
	setProperty('hellsatan.angle', b*math.pi*120*(fast/4))
end

if curStep == 544 then
	doTweenAlpha('fire1', 'fire', 0, 0.01, 'linear')
	doTweenAlpha('rain1', 'rain', 0, 0.01, 'linear')
	setProperty('hellsatan.angle', 0)
end

if curStep >= 928 and curStep <= 1183 then
	doTweenAlpha('fire1', 'fire', 1, 0.5, 'linear')
	doTweenAlpha('rain1', 'rain', 1, 0.01, 'linear')
	setProperty('hellsatan.angle', b*math.pi*200*(fast/4))
end

if curStep == 1184 then
	doTweenAlpha('fire1', 'fire', 0, 0.01, 'linear')
	doTweenAlpha('rain1', 'rain', 0, 0.01, 'linear')
	setProperty('hellsatan.angle', 0)
end
end

if songName == 'Bleeding-classic' then
    if curStep >= 256 and curStep < 512 then
	setProperty('hellsatan.angle', b*math.pi*120*(fast/4))
end
    if curStep >= 768 and curStep < 1296 then
	doTweenAlpha('fire1', 'fire', 1, 0.5, 'linear')
	setProperty('hellsatan.angle', b*math.pi*200*(fast/4))
end
end

if songName == 'bloodbath' then
    if windowmove then
	    --setPropertyFromClass('openfl.Lib','application.window.x', 24 * math.sin(currentBeat3 * math.pi) + 327, 24 * math.sin(currentBeat3 * 3) + 160)
	    --setPropertyFromClass('openfl.Lib','application.window.y', 24 * math.sin(currentBeat3 * math.pi) + 163, 24 * math.sin(currentBeat3 * 3) + 80)
    end
    if cameramove then
            setProperty('camGame.angle',2 * math.sin((currentBeat3 / 6) * math.pi) )
            setProperty('camHUD.angle',10 * math.sin((currentBeat3 / 6) * math.pi) )
    end
    if curStep == 0 then
      	  setProperty("defaultCamZoom",1.0)
end
    if curStep == 256 then
	noteTweenX('oppo0', 0, 2000, 1.5, 'linear')
	noteTweenX('oppo1', 1, 2000, 1.5, 'linear')
	noteTweenX('oppo2', 2, 2000, 1.5, 'linear')
	noteTweenX('oppo3', 3, 2000, 1.5, 'linear')
	noteTweenAngle('opporotate0', 0, 360, 1, 'linear')
	noteTweenAngle('opporotate1', 1, 360, 1, 'linear')
	noteTweenAngle('opporotate2', 2, 360, 1, 'linear')
	noteTweenAngle('opporotate3', 3, 360, 1, 'linear')
	noteTweenX('play0', 4, 415, 1, 'linear')
	noteTweenX('play1', 5, 525, 1, 'linear')
	noteTweenX('play2', 6, 635, 1, 'linear')
	noteTweenX('play3', 7, 745, 1, 'linear')
end
    if curStep >= 256 and curStep < 512 then
	setProperty('hellsatan.angle', b*math.pi*120*(fast/4))
end
    if curStep >= 768 and curStep < 1039 then
	doTweenAlpha('fire1', 'fire', 1, 0.5, 'linear')
	setProperty('hellsatan.angle', b*math.pi*200*(fast/4))
end
	if curStep == 252 or curStep == 764 then
	UNFORGIVING = true
end
	if curStep == 258 or curStep == 768 then
        windowmove = true
        cameramove = true
end
	if curStep == 512 or curStep == 1039 then
	UNFORGIVING = false
	setProperty('hellsatan.angle', 0)
end
	if curStep == 518 then
        windowmove = false
        cameramove = false
end
	if curStep == 512 then
	doTweenAngle('turn3', 'camGame', 0, 2, 'sineInOut')
	doTweenAngle('turn4', 'camHUD', 0, 2, 'sineInOut')
end
end

end


function onStepHit()
if songName == 'Bleeding-classic' then
    if curStep == 248 or curStep == 760 then
	triggerEvent('playsound','','')
end
    if curStep == 256 or curStep == 768 then
	UNFORGIVING = true
end
    if curStep == 512 or curStep == 1296 then
	setProperty('hellsatan.angle', 0)
	UNFORGIVING = false
end
end
end

function opponentNoteHit()  
   triggerEvent('Screen Shake','0.2, 0.01','0.0,0.005')
    if getProperty('health') > 0.06 then
        --setProperty('health', health- 0.05);
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
	playSound('vine',1)
end

end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'start' then
		--doTweenX('scaleX', 'deadly.scale', 1.2, 0.3, 'cubeOut')
		--doTweenY('scaleY', 'deadly.scale', 1.2, 0.3, 'cubeOut')
        --runTimer('end', 0.3)
    end
    if tag == 'end' then
		--doTweenX('scaleX', 'deadly.scale', 1, 0.3, 'cubeOut')
		--doTweenY('scaleY', 'deadly.scale', 1, 0.3, 'cubeOut')
        --runTimer('start', 0.3)
    end
end

function onBeatHit()
	if UNFORGIVING == true then
		triggerEvent('Screen Shake','0.3, 0.01','0.0,0.005')
	end

        if curBeat % 2 == 0 then
			doTweenX('scaleX', 'deadly.scale', 1.2, 0.5, 'cubeOut')
			doTweenY('scaleY', 'deadly.scale', 1.2, 0.5, 'cubeOut')
        else
			doTweenX('scaleX', 'deadly.scale', 1, 0.5, 'cubeOut')
			doTweenY('scaleY', 'deadly.scale', 1, 0.5, 'cubeOut')
        end
end