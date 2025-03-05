local bgs = 'bgs/newbgtest/'

function onCreate()
--wasted
	makeLuaSprite('2newsky', bgs..'wasted/wasted_sky', -600, -350);
	setScrollFactor('2newsky', 0.5, 0.5);

	makeLuaSprite('2newstreet', bgs..'wasted/wasted_street', -600, -350);
	setScrollFactor('2newstreet', 1, 1);

	makeLuaSprite('2city', bgs..'wasted/wasted_city', -600, -350);
	setScrollFactor('2city', 0.5, 0.5);

	makeLuaSprite('2hillfront', bgs..'wasted/wasted_hillfront', -600, -350);
	setScrollFactor('2hillfront', 0.6, 0.6);

	makeLuaSprite('2mountains', bgs..'wasted/wasted_mountains', -600, -350);
	setScrollFactor('2mountains', 0.5, 0.5);

	makeAnimatedLuaSprite('rain','bgs/annoyed_rain',-775,-2500)
	addAnimationByPrefix('rain','animated','rain',24,true)
	scaleObject('rain', 5, 5);
	setScrollFactor('rain', 0, 0);
	setObjectCamera('rain', 'camgame');
	setProperty('rain.alpha', 0.3)

	makeLuaSprite('allblack', '', 0, 0)
	setScrollFactor('allblack', 0, 0)
	makeGraphic('allblack', 3840, 2160, '000000')
	setProperty('allblack.alpha', 0)
	screenCenter('allblack', 'xy')
	
	makeLuaSprite('water', bgs..'wasted/underwater', -1100, -400);
	setScrollFactor('water', 0.1, 0.1);
	setProperty('water.alpha', 0)
	scaleObject('water', 6, 6);

	makeLuaSprite('j', bgs..'wasted/j', -200, -200);
	setScrollFactor('j', 0, 0);
	setProperty('j.alpha', 0)
	scaleObject('j', 1.5, 1.5);

	makeLuaSprite('fog', bgs..'wasted/fog', -700, -100);
	setScrollFactor('fog', 0.8, 0.8);
	setProperty('fog.color', '000000')
	setProperty('fog.alpha', 0)
	scaleObject('fog', 2, 2);

	makeLuaSprite('fog2', bgs..'wasted/fog', -500, -400);
	setScrollFactor('fog2', 0.4, 0.4);
	setProperty('fog2.alpha', 0)
	scaleObject('fog2', 3, 3);

	makeLuaSprite('effect', 'bgs/effect', -2530, -1350);
	setLuaSpriteScrollFactor('effect', 0, 0);
	scaleObject('effect', 2.5, 2.5)
	setObjectCamera('effect', 'camgame');
	setProperty('effect.alpha', 0)


	--setProperty("defaultCamZoom",0.2)


	addLuaSprite('2newsky', false);
	addLuaSprite('2city', false);
	addLuaSprite('2mountains', false);
	addLuaSprite('2hillfront', false);
	addLuaSprite('2newstreet', false);
	addLuaSprite('fog2', false)
	addLuaSprite('water', false)
	addLuaSprite('fog', true)
	--addLuaSprite('j', true)
	addLuaSprite('rain', true);
	addLuaSprite('effect', true);
	addLuaSprite('allblack', true)
        addLuaSprite('flash', true);


end


function onUpdate(elapsed)
	songPos = getSongPosition()
    local currentBeat = (songPos/100)
	if curStep >= 1104 and curStep <= 1408 then
    	setProperty('gf.angle', getProperty('gf.angle') + 1)
		setProperty('boyfriend.angle', getProperty('boyfriend.angle') + math.sin(curStep/8)/6);
		setProperty('dad.angle', getProperty('dad.angle') - math.sin(curStep/8)/6);
		setProperty('gf.y', getProperty('gf.y') + math.sin(curStep/4)/2)
		setProperty('boyfriend.y', getProperty('boyfriend.y') + math.sin(curStep/6)/2);
		setProperty('dad.y', getProperty('dad.y') - math.sin(curStep/6)/2);
		setProperty('water.angle', getProperty('water.angle') - math.sin(curStep/10)/6)
	end

	if curStep >= 1104 and curStep < 1360 then
    	if downscroll == false then
            noteTweenY('defaultPlayerStrumX0', 0, 50 + (math.cos(currentBeat/4+1) * 10), 0.001)
            noteTweenY('defaultPlayerStrumX1', 1, 50 + (math.cos(currentBeat/4+2) * 10), 0.001)
            noteTweenY('defaultPlayerStrumX2', 2, 50 + (math.cos(currentBeat/4+3) * 10), 0.001)
            noteTweenY('defaultPlayerStrumX3', 3, 50 + (math.cos(currentBeat/4+4) * 10), 0.001)
            noteTweenY('defaultPlayerStrumY0', 4, 50 + (math.cos(currentBeat/4+5) * 10), 0.001)
            noteTweenY('defaultPlayerStrumY1', 5, 50 + (math.cos(currentBeat/4+6) * 10), 0.001)
            noteTweenY('defaultPlayerStrumY2', 6, 50 + (math.cos(currentBeat/4+7) * 10), 0.001)
            noteTweenY('defaultPlayerStrumY3', 7, 50 + (math.cos(currentBeat/4+8) * 10), 0.001)
    	end
    	if downscroll == true then
            noteTweenY('defaultPlayerStrumX0', 0, 550 + (math.cos(currentBeat/4+1)  * -10), 0.001)
            noteTweenY('defaultPlayerStrumX1', 1, 550 + (math.cos(currentBeat/4+2)  * -10), 0.001)
            noteTweenY('defaultPlayerStrumX2', 2, 550 + (math.cos(currentBeat/4+3)  * -10), 0.001)
            noteTweenY('defaultPlayerStrumX3', 3, 550 + (math.cos(currentBeat/4+4)  * -10), 0.001)
            noteTweenY('defaultPlayerStrumY0', 4, 550 + (math.cos(currentBeat/4+5)  * -10), 0.001)
            noteTweenY('defaultPlayerStrumY1', 5, 550 + (math.cos(currentBeat/4+6)  * -10), 0.001)
            noteTweenY('defaultPlayerStrumY2', 6, 550 + (math.cos(currentBeat/4+7)  * -10), 0.001)
            noteTweenY('defaultPlayerStrumY3', 7, 550 + (math.cos(currentBeat/4+8)  * -10), 0.001)
        end
    end
end

function onStepHit()
	if curStep == 320 or curStep == 836 then
		--doTweenAlpha('fog1', 'fog', 0.2, 0.01, 'linear')
		--doTweenColor('fog1', 'fog', '000000', 0.001, 'linear')
		doTweenAlpha('allblack1', 'allblack', 0.05, 0.01, 'linear')
	end

	if curStep == 576 then
		--doTweenAlpha('fog1', 'fog', 0, 0.01, 'linear')
		doTweenAlpha('allblack1', 'allblack', 0, 0.01, 'linear')
	end

    if curStep == 1088 then
	doTweenAlpha('allblack1', 'allblack', 1, 0.01, 'linear')
	--doTweenAlpha('2newsky1', '2newsky', 0, 0.01, 'linear')
	--doTweenAlpha('2city1', '2city', 0, 0.01, 'linear')
	--doTweenAlpha('2mountains1', '2mountains', 0, 0.01, 'linear')
	--doTweenAlpha('2hillfront1', '2hillfront', 0, 0.01, 'linear')
	--doTweenAlpha('2newstreet1', '2newstreet', 0, 0.01, 'linear')
	doTweenAlpha('rain1', 'rain', 0, 0.01, 'linear')

end
    if curStep == 1104 then
	spin = true
	doTweenAlpha('allblack1', 'allblack', 0, 0.01, 'linear')
	doTweenAlpha('water1', 'water', 1, 0.01, 'linear')
	doTweenAlpha('j1', 'j', 1, 0.01, 'linear')
	doTweenAlpha('fog1', 'fog', 0.2, 0.01, 'linear')
	doTweenColor('fog1', 'fog', '000000', 0.001, 'linear')
	doTweenAlpha('fog2', 'fog2', 0.5, 0.01, 'linear')

end
    if curStep == 1360 then
	triggerEvent('Change Scroll Speed','1.2','')
	doTweenAlpha('allblack1', 'allblack', 1, 0.01, 'linear')
	if downscroll == false then
		noteTweenY('NoteMove5', 4, 50, 0.001, 'backOut')
		noteTweenY('NoteMove6', 5, 50, 0.001, 'backOut')
		noteTweenY('NoteMove7', 6, 50, 0.001, 'backOut')
		noteTweenY('NoteMove8', 7, 50, 0.001, 'backOut')
		noteTweenY('NoteMove1', 0, 50, 0.001, 'backOut')
		noteTweenY('NoteMove2', 1, 50, 0.001, 'backOut')
		noteTweenY('NoteMove3', 2, 50, 0.001, 'backOut')
		noteTweenY('NoteMove4', 3, 50, 0.001, 'backOut')
	end
	if downscroll == true then
		noteTweenY('NoteMove5', 4, 550, 0.001, 'backOut')
		noteTweenY('NoteMove6', 5, 550, 0.001, 'backOut')
		noteTweenY('NoteMove7', 6, 550, 0.001, 'backOut')
		noteTweenY('NoteMove8', 7, 550, 0.001, 'backOut')
		noteTweenY('NoteMove1', 0, 550, 0.001, 'backOut')
		noteTweenY('NoteMove2', 1, 550, 0.001, 'backOut')
		noteTweenY('NoteMove3', 2, 550, 0.001, 'backOut')
		noteTweenY('NoteMove4', 3, 550, 0.001, 'backOut')
	end
end
if curStep == 1408 then
	doTweenAlpha('water1', 'water', 0, 0.01, 'linear')
	doTweenAlpha('j1', 'j', 0, 0.01, 'linear')
	doTweenAlpha('fog1', 'fog', 0, 0.01, 'linear')
	doTweenAlpha('fog2', 'fog2', 0, 0.01, 'linear')
	setProperty('gf.angle', 0)
end
    if curStep == 1488 then
	doTweenAlpha('allblack1', 'allblack', 0, 0.01, 'linear')
	doTweenAlpha('rain1', 'rain', 0.3, 0.01, 'linear')
	doTweenAlpha('effect1', 'effect', 1, 0.01, 'linear')
end


end

function onBeatHit()
    if curBeat >= 80 and curBeat <= 143 or curBeat >= 208 and curBeat <= 272 then
       -- doTweenZoom('zooom', 'camHUD', 1, 0.4, 'circOut')
        --setProperty('camHUD.zoom', 1.1)
        if curBeat %1 == 0 then
            runTimer('redo', 0.5)
            if downscroll == false then
                noteTweenY('NoteMove5', 4, 50, 0.5, 'backOut')
                noteTweenY('NoteMove6', 5, 50, 0.5, 'backOut')
                noteTweenY('NoteMove7', 6, 50, 0.5, 'backOut')
                noteTweenY('NoteMove8', 7, 50, 0.5, 'backOut')
                noteTweenY('NoteMove1', 0, 50, 0.5, 'backOut')
                noteTweenY('NoteMove2', 1, 50, 0.5, 'backOut')
                noteTweenY('NoteMove3', 2, 50, 0.5, 'backOut')
                noteTweenY('NoteMove4', 3, 50, 0.5, 'backOut')
                for i = 0, 7 do
                    setPropertyFromGroup('strumLineNotes',i,'y', 75)
                end
            end
            if downscroll == true then
                noteTweenY('NoteMove5', 4, 550, 0.5, 'backOut')
                noteTweenY('NoteMove6', 5, 550, 0.5, 'backOut')
                noteTweenY('NoteMove7', 6, 550, 0.5, 'backOut')
                noteTweenY('NoteMove8', 7, 550, 0.5, 'backOut')
                noteTweenY('NoteMove1', 0, 550, 0.5, 'backOut')
                noteTweenY('NoteMove2', 1, 550, 0.5, 'backOut')
                noteTweenY('NoteMove3', 2, 550, 0.5, 'backOut')
                noteTweenY('NoteMove4', 3, 550, 0.5, 'backOut')
                for i = 0, 7 do
                    setPropertyFromGroup('strumLineNotes',i,'y', 525)
                end
            end
        end
    end
end
function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'redo' then
        if downscroll == false then
            noteTweenY('NoteMove5', 4, 50, 0.2, 'backOut')
            noteTweenY('NoteMove6', 5, 50, 0.2, 'backOut')
            noteTweenY('NoteMove7', 6, 50, 0.2, 'backOut')
            noteTweenY('NoteMove8', 7, 50, 0.2, 'backOut')
            noteTweenY('NoteMove1', 0, 50, 0.2, 'backOut')
            noteTweenY('NoteMove2', 1, 50, 0.2, 'backOut')
            noteTweenY('NoteMove3', 2, 50, 0.2, 'backOut')
            noteTweenY('NoteMove4', 3, 50, 0.2, 'backOut')
        end
        if downscroll == true then
            noteTweenY('NoteMove5', 4, 550, 0.2, 'backOut')
            noteTweenY('NoteMove6', 5, 550, 0.2, 'backOut')
            noteTweenY('NoteMove7', 6, 550, 0.2, 'backOut')
            noteTweenY('NoteMove8', 7, 550, 0.2, 'backOut')
            noteTweenY('NoteMove1', 0, 550, 0.2, 'backOut')
            noteTweenY('NoteMove2', 1, 550, 0.2, 'backOut')
            noteTweenY('NoteMove3', 2, 550, 0.2, 'backOut')
            noteTweenY('NoteMove4', 3, 550, 0.2, 'backOut')
        end
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