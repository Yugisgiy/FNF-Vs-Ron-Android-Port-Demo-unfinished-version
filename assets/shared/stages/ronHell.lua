local bgs = 'bgs/newbgtest/'

function onCreate()
if songName == 'Bloodshed' then 
	addCharacterToList('ron', 'dad')
	addCharacterToList('gf', 'gf')
	addCharacterToList('bf', 'boyfriend')
	addCharacterToList('bloodshedron', 'dad')
	addCharacterToList('GFrun', 'gf')
	addCharacterToList('BFrun', 'boyfriend')
end

--ron
	makeLuaSprite('newsky', bgs..'ron/ron_sky', -600, -350);
	setScrollFactor('newsky', 0.5, 0.5);

	makeLuaSprite('newstreet', bgs..'ron/ron_street', -600, -350);
	setScrollFactor('newstreet', 1, 1);

	makeLuaSprite('city', bgs..'ron/ron_city', -600, -350);
	setScrollFactor('city', 0.5, 0.5);

	makeLuaSprite('hillfront', bgs..'ron/ron_hillfront', -600, -350);
	setScrollFactor('hillfront', 0.6, 0.6);

	makeLuaSprite('mountains', bgs..'ron/ron_mountains', -600, -350);
	setScrollFactor('mountains', 0.5, 0.5);

	makeLuaSprite('mountainsback', bgs..'ron/ron_mountainsback', -600, -350);
	setScrollFactor('mountainsback', 0.5, 0.5);

--bloodshed
	makeLuaSprite('2newsky', bgs..'bloodshed/bloodshed_sky', -600, -350);
	setScrollFactor('2newsky', 0.5, 0.5);
	setProperty('2newsky.alpha', 0)

	makeLuaSprite('2newstreet', bgs..'bloodshed/bloodshed_street', -600, -350);
	setScrollFactor('2newstreet', 1, 1);
	setProperty('2newstreet.alpha', 0)

	makeLuaSprite('2city', bgs..'bloodshed/bloodshed_city', -600, -350);
	setScrollFactor('2city', 0.5, 0.5);
	setProperty('2city.alpha', 0)

	makeLuaSprite('2hillfront', bgs..'bloodshed/bloodshed_hillfront', -600, -350);
	setScrollFactor('2hillfront', 0.6, 0.6);
	setProperty('2hillfront.alpha', 0)

	makeLuaSprite('2mountains', bgs..'bloodshed/bloodshed_mountains', -600, -350);
	setScrollFactor('2mountains', 0.5, 0.5);
	setProperty('2mountains.alpha', 0)

	makeLuaSprite('2mountainsback', bgs..'bloodshed/bloodshed_mountainsback', -600, -350);
	setScrollFactor('2mountainsback', 0.5, 0.5);
	setProperty('2mountainsback.alpha', 0)

	makeLuaSprite('hellsatan', 'bgs/hellRon_satan', 0, 500);
	setScrollFactor('hellsatan', 0.5, 0.5);
	scaleObject('hellsatan', 1.2, 1.2);
	setProperty('hellsatan.alpha', 0)

	makeAnimatedLuaSprite('rain','bgs/annoyed_rain',-775,-2500)
	addAnimationByPrefix('rain','animated','rain',24,true)
	scaleObject('rain', 5, 5);
	setScrollFactor('rain', 0, 0);
	setObjectCamera('rain', 'camgame');
	setProperty('rain.alpha', 0)

	makeAnimatedLuaSprite('boom',bgs..'bloodshed/explosion',-300, -270)
	addAnimationByPrefix('boom','explosion','explosion',24,false)
	setScrollFactor('boom', 0, 0);
	scaleObject('boom', 1.2, 1.2);
	addLuaSprite('boom', true)
	setProperty('boom.alpha',0)
	setObjectCamera('boom','camOther')

	makeLuaSprite('newstreet2', bgs..'bloodshed/bloodshed_streetBroken', -600, -1700);
	setProperty('newstreet2.alpha',0)

	makeLuaSprite('deadly', 'bgs/deadly', -700, -350);
	setLuaSpriteScrollFactor('deadly', 0, 0);
	--setObjectOrder('deadly', 7)
	scaleObject('deadly', 1, 1)
	setObjectCamera('deadly', 'camgame');
	setProperty('deadly.alpha', 0)

	makeAnimatedLuaSprite('fire','bgs/escape_fire',-400,-700)
	addAnimationByPrefix('fire','animated','fire',24,true)
	scaleObject('fire', 4.6, 4.6);
	setScrollFactor('fire', 0, 0);
	setProperty('fire.alpha', 0)

	makeAnimatedLuaSprite('lava',bgs..'bloodshed/lava',100,-3000)
	addAnimationByPrefix('lava','animated','lava',24,true)
	scaleObject('lava', 2, 2);
	setScrollFactor('lava', 0, 0);
	setProperty('lava.alpha', 0)

	makeLuaSprite('space', bgs..'bloodshed/space', -1200, -700);
	scaleObject('space', 1.5, 1.5);
	setScrollFactor('space', 0.3, 0.3);
	setProperty('space.alpha', 0)

	makeLuaSprite('spacebg', bgs..'bloodshed/spacebg', -1000, -500);
	scaleObject('spacebg', 1.5, 1.5);
	setScrollFactor('spacebg', 0.1, 0.1);
	setProperty('spacebg.alpha', 0)

	makeLuaSprite('star', bgs..'bloodshed/freindlystars', -1000, -500);
	scaleObject('star', 1, 1);
	setScrollFactor('star', 0.05, 0.05);
	setProperty('star.alpha', 0)

	makeLuaSprite('allwhite', '', 0, 0)
	setScrollFactor('allwhite', 0, 0)
	makeGraphic('allwhite', 3840, 2160, 'FFFFFF')
	setProperty('allwhite.alpha', 0)
	screenCenter('allwhite', 'xy')

	makeLuaSprite('allblack', '', 0, 0)
	setScrollFactor('allblack', 0, 0)
	makeGraphic('allblack', 3840, 2160, '000000')
	setProperty('allblack.alpha', 0)
	screenCenter('allblack', 'xy')


	addLuaSprite('newsky', false);
	addLuaSprite('city', false);
	addLuaSprite('mountainsback', false);
	addLuaSprite('mountains', false);
	addLuaSprite('hillfront', false);
	addLuaSprite('newstreet', false);
	addLuaSprite('2newsky', false);
	addLuaSprite('lava', false);
	addLuaSprite('hellsatan', false);
	addLuaSprite('2city', false);
	addLuaSprite('2mountainsback', false);
	addLuaSprite('2mountains', false);
	addLuaSprite('2hillfront', false);
	addLuaSprite('2newstreet', false);
	addLuaSprite('fire', false);
	addLuaSprite('newstreet2', false);
	addLuaSprite('spacebg', false);
	addLuaSprite('star', false);
	addLuaSprite('space', false);
	addLuaSprite('deadly', true);
	addLuaSprite('rain', true);
    addLuaSprite('flash', true);
	addLuaSprite('allwhite', true);
	addLuaSprite('allblack', true)


end

local fast = 4
local speedy = 0.125
enabled = false
haha = 1000

function onUpdate()
	health = getProperty('health')
	songPos = getSongPosition()
	local b = songPos / 1000 * bpm / 170
    local currentBeat = (songPos/1000)*(curBpm/60)
    currentBeat2 = (songPos / haha) * (bpm / 170)
	setProperty('iconP2.alpha', (2-(getProperty('health'))-0.25)/2+0.2)
    setProperty('iconP1.alpha', (getProperty('health')-0.25)/2+0.2)
	--setProperty('iconP1.alpha', getProperty('health')/2+0.05)
	--setProperty('iconP2.alpha', -getProperty('health')/2+1.05)

	if enabled then
            --setProperty('camGame.angle',0 - -2 * math.cos((currentBeat2*0.4)*math.pi) )
            --setProperty('camHUD.angle',0 - -10 * math.cos((currentBeat2*0.4)*math.pi) )
			setProperty('camGame.angle', 2 * math.sin((currentBeat/6) * math.pi ) )
			setProperty('camHUD.angle', 10 * math.sin((currentBeat/6) * math.pi ) )
	end

	if enabled2 then
		--setProperty('camGame.angle',0 - -2 * math.cos((currentBeat2*0.4)*math.pi) )
		--setProperty('camHUD.angle',0 - -10 * math.cos((currentBeat2*0.4)*math.pi) )
		setProperty('camGame.angle', 2 * math.sin((currentBeat/2) * math.pi ) )
		setProperty('camHUD.angle', 10 * math.sin((currentBeat/2) * math.pi ) )
	end

	if curStep >= 383 and curStep <= 1151 then
		setProperty('deadly.alpha',(((2-health)/3)+0.3)/2)
	end	
	
if songName == 'Bloodshed' then 
    if curStep == 336 then
        doTweenY('hellsatan', 'hellsatan', -350, 5, 'circOut');
        doTweenAngle('hellsatanlol', 'hellsatan', 720, 5, 'circOut');

end

    if curStep >= 352 then
	setProperty('hellsatan.angle', b*math.pi*200*(fast/4))
end

    if curStep == 383 then
	doTweenAlpha('rain1', 'rain', 0.5, 0.01, 'linear')
	doTweenAlpha('fire1', 'fire', 1, 0.01, 'linear')
	--doTweenAlpha('deadly1', 'deadly', 0.5, 0.01, 'linear')
	doTweenAlpha('lava1', 'lava', 1, 0.01, 'linear')
	doTweenAlpha('hellsatan1', 'hellsatan', 0, 0.01, 'linear')
	doTweenY('dady', 'dad', -3500, 0.001, 'sineInOut')
	doTweenY('bfy', 'boyfriend', -2800, 0.001, 'sineInOut')
	setProperty('boyfriend.x',1300);
	setProperty('dad.x',-750);
end
    if curStep == 384 then
  	setProperty('gf.alpha', 0);
	--doTweenY('dady', 'dad', -1500, 24, 'sineInOut')
	--doTweenY('bfy', 'boyfriend', -800, 24, 'sineInOut')
	doTweenAlpha('2city1', '2city', 0, 0.01, 'linear')
	doTweenAlpha('2mountainsback1', '2mountainsback', 0, 0.01, 'linear')
	doTweenAlpha('2mountains1', '2mountains', 0, 0.01, 'linear')
	doTweenAlpha('2hillfront1', '2hillfront', 0, 0.01, 'linear')
	doTweenAlpha('2newstreet', '2newstreet', 0, 0.01, 'linear')

end

    if curStep >= 384 and curStep <= 639 then
    	setProperty('boyfriend.angle', getProperty('boyfriend.angle') + 0.8)
end
    if curStep >= 895 and curStep <= 1151 then
    	setProperty('boyfriend.angle', getProperty('boyfriend.angle') + 0.8)
end

    if curStep == 256 then
        noteTweenX('NoteMove1', 0, 2400, 1, 'quintInOut')
        noteTweenX('NoteMove2', 1, 2530, 1, 'quintInOut')
        noteTweenX('NoteMove3', 2, 2640, 1, 'quintInOut')
        noteTweenX('NoteMove4', 3, 2750, 1, 'quintInOut')
        noteTweenAngle('NoteCircle1', 0, 720, 1, 'quintInOut')
        noteTweenAngle('NoteCircle2', 1, 720, 1, 'quintInOut')
        noteTweenAngle('NoteCircle3', 2, 720, 1, 'quintInOut')
        noteTweenAngle('NoteCircle4', 3, 720, 1, 'quintInOut')
        noteTweenAngle('NoteCircle5', 4, -360, 1, 'backOut')
        noteTweenAngle('NoteCircle6', 5, -360, 1, 'backOut')
        noteTweenAngle('NoteCircle7', 6, -360, 1, 'backOut')
        noteTweenAngle('NoteCircle8', 7, -360, 1, 'backOut')
        noteTweenX('NoteMove5', 4, 420, 1, 'backOut')
        noteTweenX('NoteMove6', 5, 530, 1, 'backOut')
        noteTweenX('NoteMove7', 6, 640, 1, 'backOut')
        noteTweenX('NoteMove8', 7, 750, 1, 'backOut')
end
--elasticOut
    if curStep == 639 then
	--playSound('hellexplode',0.1)
	doTweenAlpha('newstreet2', 'newstreet2', 1, 0.01, 'linear')
	setProperty('boyfriend.angle', 0)
	doTweenAlpha('rain1', 'rain', 0.8, 0.01, 'linear')
	doTweenY('dady', 'dad', -1500, 1, 'sineInOut')
	doTweenY('bfy', 'boyfriend', -800, 1, 'sineInOut')
end
    if curStep == 895 then
	doTweenAlpha('newstreet2', 'newstreet2', 0, 0.01, 'linear')
	doTweenAlpha('rain1', 'rain', 0.5, 0.01, 'linear')
	doTweenY('dady', 'dad', -5500, 0.001, 'sineInOut')
	doTweenY('bfy', 'boyfriend', -4800, 0.001, 'sineInOut')
	--playSound('hellexplode',0.1)
end

    if curStep == 1136 then
	doTweenAlpha('allwhite1', 'allwhite', 1, 1.2, 'linear')
end

    if curStep == 1151 then
	setProperty('boyfriend.angle', 0)
	doTweenY('dady', 'dad', -200, 0.001, 'sineInOut')
	--doTweenAlpha('fire1', 'fire', 0, 0.01, 'linear')
	doTweenAlpha('deadly1', 'deadly', 0, 0.01, 'linear')
	--doTweenAlpha('lava1', 'lava', 0, 0.01, 'linear')
	--doTweenAlpha('2newsky1', '2newsky', 0, 0.01, 'linear')
	doTweenAlpha('rain1', 'rain', 0, 0.01, 'linear')
	doTweenAlpha('spacebg1', 'spacebg', 1, 0.01, 'linear')
	doTweenAlpha('space1', 'space', 1, 0.01, 'linear')
	doTweenAlpha('star1', 'star', 0.5, 0.01, 'linear')
end
    if curStep == 1152 then
	doTweenAlpha('allwhite1', 'allwhite', 0, 1.2, 'linear')
end

if curStep >= 128 then
    setProperty('healthBarBG.alpha',0)
    setProperty('healthBar.alpha',0)
end

end
end


function onStepHit()
if songName == 'Bloodshed' then 
    if curStep == 128 then
	doTweenAlpha('2newsky1', '2newsky', 1, 0.01, 'linear')
	doTweenAlpha('hellsatan1', 'hellsatan', 1, 0.01, 'linear')
	doTweenAlpha('2city1', '2city', 1, 0.01, 'linear')
	doTweenAlpha('2mountainsback1', '2mountainsback', 1, 0.01, 'linear')
	doTweenAlpha('2mountains1', '2mountains', 1, 0.01, 'linear')
	doTweenAlpha('2hillfront1', '2hillfront', 1, 0.01, 'linear')
	doTweenAlpha('2newstreet1', '2newstreet', 1, 0.01, 'linear')
	doTweenAlpha('rain1', 'rain', 1, 0.01, 'linear')


end  
    if curStep == 383 or curStep == 895 then
	triggerEvent('playsound','','')
	setProperty('boom.alpha',1)
	objectPlayAnimation('boom', 'explosion');
end
    if curStep == 639 then
	triggerEvent('playsound','','')
end

	if curStep == 384 then
		enabled = true
	end

    if curStep == 640 then
	enabled = false
	doTweenAngle('turn3', 'camGame', 0, 0.5, 'sineInOut')
	doTweenAngle('turn4', 'camHUD', 0, 0.5, 'sineInOut')
end
	if curStep == 896 then
		enabled = true
	end

    if curStep == 1135 then
	enabled = false
	doTweenAngle('turn3', 'camGame', 0, 0.5, 'sineInOut')
	doTweenAngle('turn4', 'camHUD', 0, 0.5, 'sineInOut')
end
	if curStep == 1152 then
		enabled2 = true
	end



end
end

function onBeatHit()
if curStep >= 383 and curStep <= 1151 then
	if curBeat % 2 == 0 then
		doTweenX('scaleX', 'deadly.scale', 1.2, 0.5, 'cubeOut')
		doTweenY('scaleY', 'deadly.scale', 1.2, 0.5, 'cubeOut')
	else
		doTweenX('scaleX', 'deadly.scale', 1, 0.5, 'cubeOut')
		doTweenY('scaleY', 'deadly.scale', 1, 0.5, 'cubeOut')
	end
end
end

function opponentNoteHit()  
if songName == 'Bloodshed' then 
if curStep >= 128 then
   triggerEvent('Screen Shake','0.2, 0.01','0.0,0.005')
    if getProperty('health') > 0.06 then
        setProperty('health', health- 0.05);
    end
end
end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if isSustainNote then
		--setProperty('health', health +0.01)
	else
		--setProperty('health', health + 0.08)
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

