local bgs = 'bgs/newbgtest/'

function onCreate()
--trojan
	makeLuaSprite('newsky', bgs..'ayo/ayo_sky', -870, -420);
	setScrollFactor('newsky', 0.5, 0.5);

	makeLuaSprite('newstreet', bgs..'ayo/ayo_street', -870, -420);
	setScrollFactor('newstreet', 1, 1);

	makeLuaSprite('city', bgs..'ayo/ayo_mountains', -870, -420);
	setScrollFactor('city', 0.5, 0.5);

	makeLuaSprite('hillfront', bgs..'ayo/ayo_hillfront', -870, -420);
	setScrollFactor('hillfront', 0.6, 0.6);

	makeLuaSprite('mountainsback', bgs..'ayo/ayo_mountainsback', -870, -420);
	setScrollFactor('mountainsback', 0.5, 0.5);

	makeAnimatedLuaSprite('rain','bgs/annoyed_rain',-775,-2500)
	addAnimationByPrefix('rain','animated','rain',24,true)
	scaleObject('rain', 5, 5);
	setScrollFactor('rain', 0, 0);
	setObjectCamera('rain', 'camgame');
	setProperty('rain.alpha', 0.6)

	makeAnimatedLuaSprite('thebg',bgs..'trojan-virus/backgroundanimated',-870,-420)
	addAnimationByPrefix('thebg','animated','bruj',24,true)
	scaleObject('thebg', 5, 5);
	setScrollFactor('thebg', 0, 0);
	setObjectCamera('thebg', 'camgame');
	setProperty('thebg.alpha', 1)

	makeAnimatedLuaSprite('pop','bgs/atelo_popup_animated',-870,-420)
	addAnimationByPrefix('pop','animated','popups instance',24,true)
	scaleObject('pop', 5, 5);
	setScrollFactor('pop', 0, 0);
	setObjectCamera('pop', 'camgame');
	setProperty('pop.alpha', 1)

	makeLuaSprite('web', bgs..'trojan-virus/platform', -670, 20);
	setScrollFactor('web', 1, 1);
	setProperty('web.alpha', 1)

	makeLuaSprite('budjet', 'ron/budjet', 0, 0);
	setScrollFactor('budjet', 1, 1);
	setProperty('budjet.alpha', 0)
	setObjectCamera('budjet', 'other');

	addLuaSprite('thebg', false);
	addLuaSprite('pop', false);
	addLuaSprite('web', false);
	addLuaSprite('newsky', false);
	addLuaSprite('city', false);
	addLuaSprite('mountainsback', false);
	addLuaSprite('hillfront', false);
	addLuaSprite('newstreet', false);
	addLuaSprite('rain', true);
        addLuaSprite('flash', true);
        --addLuaSprite('flash1', true);
        addLuaSprite('budjet', false);


end

local enabled = false

function onUpdate()
    songPos = getSongPosition()
    local currentBeat = (songPos/3000)*(curBpm/30)
    
    if enabled then
        noteTweenX(defaultPlayerStrumX0, 4, defaultPlayerStrumX0 - 30*math.sin((currentBeat+4*0.25)*math.pi), 0.01)
        noteTweenX(defaultPlayerStrumX1, 5, defaultPlayerStrumX1 - 30*math.sin((currentBeat+5*0.25)*math.pi), 0.01)
        noteTweenX(defaultPlayerStrumX2, 6, defaultPlayerStrumX2 - 30*math.sin((currentBeat+6*0.25)*math.pi), 0.01)
        noteTweenX(defaultPlayerStrumX3, 7, defaultPlayerStrumX3 - 30*math.sin((currentBeat+7*0.25)*math.pi), 0.01)

        noteTweenX(defaultOpponentStrumX0, 0, defaultOpponentStrumX0 + 30*math.sin((currentBeat+4*0.25)*math.pi), 0.01)
        noteTweenX(defaultOpponentStrumX1, 1, defaultOpponentStrumX1 + 30*math.sin((currentBeat+5*0.25)*math.pi), 0.01)
        noteTweenX(defaultOpponentStrumX2, 2, defaultOpponentStrumX2 + 30*math.sin((currentBeat+6*0.25)*math.pi), 0.01)
        noteTweenX(defaultOpponentStrumX3, 3, defaultOpponentStrumX3 + 30*math.sin((currentBeat+7*0.25)*math.pi), 0.01)
		triggerEvent('Screen Shake','0.2, 0.005','0.0,0.005')
    else
	noteTweenX('p1', 0, 92, 0.01, linear)
        noteTweenX('p2', 1, 204, 0.01, linear)
        noteTweenX('p3', 2, 316, 0.01, linear)
        noteTweenX('p4', 3, 428, 0.01, linear)
        noteTweenX('o1', 4, 732, 0.01, linear)
        noteTweenX('o2', 5, 845, 0.01, linear)
        noteTweenX('o3', 6, 955, 0.01, linear)
        noteTweenX('o4', 7,1067, 0.01, linear)
end

    if curStep == 384 then
	enabled = true
	doTweenAlpha('rain1', 'rain', 0, 0.01, 'linear')
	doTweenAlpha('2city1', 'city', 0, 0.01, 'linear')
	doTweenAlpha('2newsky1', 'newsky', 0, 0.01, 'linear')
	doTweenAlpha('2mountainsback1', 'mountainsback', 0, 0.01, 'linear')
	doTweenAlpha('2hillfront1', 'hillfront', 0, 0.01, 'linear')
	doTweenAlpha('2newstreet', 'newstreet', 0, 0.01, 'linear')
	--doTweenAlpha('web', 'web', 1, 0.01, 'linear')
	--doTweenAlpha('pop', 'pop', 1, 0.01, 'linear')
	--doTweenAlpha('thebg', 'thebg', 1, 0.01, 'linear')
end
    if curStep == 640 or curStep == 1424 then
	enabled = false
end
    if curStep == 912 then
	enabled = true
end
    if curStep == 1432 then
	doTweenAlpha('hudout','camHUD',0,1.5)
end
    if curStep == 1552 then
	doTweenAlpha('budjet', 'budjet', 1, 0.01, 'linear')
end
end

function onStepHit()
    if curStep == 1160 or curStep == 1164 or curStep == 1166 then
	--setPropertyFromClass('openfl.Lib','application.window.x', 327 + math.random(-50, 50))
        --setPropertyFromClass('openfl.Lib','application.window.y', 163 + math.random(-50, 50))
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
