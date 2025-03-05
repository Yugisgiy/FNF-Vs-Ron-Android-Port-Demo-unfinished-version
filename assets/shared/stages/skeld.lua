function onCreate()
	makeLuaSprite('background', 'bgs/newbgtest/sabotage/background', -600, -250);
	setScrollFactor('background', 1, 1);
	
	makeLuaSprite('dbackground', 'bgs/newbgtest/sabotage/darkbackground', -600, -250);
	setScrollFactor('dbackground', 1, 1);
	setProperty('dbackground.alpha', 0)

	makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1280,720,'ffffff')
	setLuaSpriteScrollFactor('flash',0,0)
	setProperty('flash.scale.x',2)
	setProperty('flash.scale.y',2)
	setProperty('flash.alpha',0)

	makeLuaSprite('black', '', 0, 0);
        makeGraphic('black',1280,720,'000000')
	setLuaSpriteScrollFactor('black',0,0)
	setProperty('black.scale.x',2)
	setProperty('black.scale.y',2)
	setProperty('black.alpha',0)


      	setProperty("defaultCamZoom",0.7)

	addLuaSprite('background', false);
	addLuaSprite('dbackground', false);
	addLuaSprite('black', true);
	addLuaSprite('flash', true);

end

function onStepHit()
    if curStep == 256 then
	triggerEvent('Flash Screen','0.5','')
	doTweenAlpha('black', 'black', 0.6, 0.01, 'linear')
	doTweenAlpha('dbackground', 'dbackground', 1, 0.01, 'linear')
    end
end

function onEvent(n,v1,v2)

if n == 'Flash Screen' then

setProperty('flash.alpha',1)

doTweenAlpha('flTw','flash',0,v1,'linear')

end

end
