function onCreate()
	makeAnimatedLuaSprite('bg','bgs/newbgtest/clusterfunk/bg',-735,-362)
	addAnimationByPrefix('bg','animated','BG instance',24,true)
	scaleObject('bg', 2, 2);
	setScrollFactor('bg', 1, 1);
	setObjectCamera('bg', 'camgame');

      	setProperty("defaultCamZoom",0.6)

	addLuaSprite('bg', false);
end

function onUpdate()
      	setProperty("defaultCamZoom",0.8)
	setProperty('boyfriend.x',775);
	setProperty('boyfriend.y',440);
end

function onStepHit()
	if curStep == 4 then
		triggerEvent('Flash Screen','1','')
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