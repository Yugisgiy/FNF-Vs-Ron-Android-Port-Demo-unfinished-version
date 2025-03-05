local bgs = 'bgs/newbgtest/'

function onCreate()
--ron
	makeLuaSprite('sky', bgs..'dsides/conall_sky', -800, -380);
	setScrollFactor('sky', 0.5, 0.5);

	makeLuaSprite('bg', bgs..'dsides/conall_bg', -800, -380);
	setScrollFactor('bg', 1, 1);

	makeLuaSprite('bgb', bgs..'dsides/conall_bgBehind', -800, -380);
	setScrollFactor('bgb', 0.5, 0.5);

	makeLuaSprite('bucket', bgs..'dsides/conall_bucket', -800, -380);
	setScrollFactor('bucket', 1, 1);

--wasted
	makeLuaSprite('sky2', bgs..'dsides/conallwasted_sky', -800, -380);
	setScrollFactor('sky2', 0.5, 0.5);
	setProperty('sky2.alpha', 0)

	makeLuaSprite('bg2', bgs..'dsides/conallwasted_bg', -800, -380);
	setScrollFactor('bg2', 1, 1);
	setProperty('bg2.alpha', 0)

	makeLuaSprite('bgb2', bgs..'dsides/conallwasted_bgBehind', -800, -380);
	setScrollFactor('bgb2', 0.5, 0.5);
	setProperty('bgb2.alpha', 0)

	makeLuaSprite('bucket2', bgs..'dsides/conallwasted_bucket', -800, -380);
	setScrollFactor('bucket2', 1, 1);
	setProperty('bucket2.alpha', 0)

	makeAnimatedLuaSprite('rain','bgs/annoyed_rain',-775,-2500)
	addAnimationByPrefix('rain','animated','rain',24,true)
	scaleObject('rain', 5, 5);
	setScrollFactor('rain', 0, 0);
	setObjectCamera('rain', 'camgame');
	setProperty('rain.alpha', 0)

	makeLuaSprite('flash', '', 0, 0);
	makeGraphic('flash',1280,720,'ffffff')
	setLuaSpriteScrollFactor('flash',0,0)
	setProperty('flash.scale.x',2)
	setProperty('flash.scale.y',2)
	setProperty('flash.alpha',0)


	addLuaSprite('sky', false);
	addLuaSprite('bgb', false);
	addLuaSprite('bg', false);
	addLuaSprite('bucket', false);
	addLuaSprite('sky2', false);
	addLuaSprite('bgb2', false);
	addLuaSprite('bg2', false);
        addLuaSprite('bucket2', false);
        addLuaSprite('rain', true);
        addLuaSprite('flash', true);
end

function onSongStart()
	doTweenZoom('camz','camGame', 0.6, 1,'linear')
end

function onUpdate()
	if curStep >= 770 and curStep <= 1040 then
    		setProperty('iconP2.angle', getProperty('iconP2.angle') + 0.8)
	end
end

function onStepHit()
	if curStep == 257 then
		doTweenZoom('camz','camGame', 0.7, 1,'backout')
		setProperty('flash.alpha',1)
		doTweenAlpha('flTw','flash',0,1,'linear')
	end

	if curStep == 1040 then
		doTweenAngle('dadlol','dad',0,0.5,'circInOut')
		doTweenAngle('iconlol','iconP2',2160,0.5,'circInOut')
	end

	if curStep == 1315 then
		triggerEvent('Change Scroll Speed','1.2','1')
		setProperty('flash.alpha',1)
		doTweenZoom('camz','camGame', 0.8, 0.5,'linear')
		doTweenAlpha('flTw','flash',0,0.5,'linear')
		doTweenAlpha('sky2', 'sky2', 1, 0.01, 'linear')
		doTweenAlpha('bgb2', 'bgb2', 1, 0.01, 'linear')
		doTweenAlpha('bg2', 'bg2', 1, 0.01, 'linear')
		doTweenAlpha('bucket2', 'bucket2', 1, 0.01, 'linear')
		doTweenAlpha('rain', 'rain', 0.3, 0.01, 'linear')
	end
end

function onTweenCompleted(name)
	if name == 'camz' then
		setProperty("defaultCamZoom",getProperty('camGame.zoom')) 
	end
end

function opponentNoteHit()  
	if curStep >= 768 and curStep <= 1024 then
    		setProperty('dad.angle', math.random(0, 360))
	end
end