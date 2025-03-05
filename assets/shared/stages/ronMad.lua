local bgs = 'bgs/newbgtest/'

function onCreate()
--ayo
	makeLuaSprite('newsky', bgs..'ayo/ayo_sky', -600, -350);
	setScrollFactor('newsky', 0.5, 0.5);

	makeLuaSprite('newstreet', bgs..'ayo/ayo_street', -600, -350);
	setScrollFactor('newstreet', 1, 1);
	setProperty('newstreet.alpha', 0)

	makeLuaSprite('city', bgs..'ayo/ayo_mountains', -600, -350);
	setScrollFactor('city', 0.5, 0.5);

	makeLuaSprite('hillfront', bgs..'ayo/ayo_hillfront', -600, -350);
	setScrollFactor('hillfront', 0.6, 0.6);

	makeLuaSprite('mountainsback', bgs..'ayo/ayo_mountainsback', -600, -350);
	setScrollFactor('mountainsback', 0.5, 0.5);

	makeLuaSprite('newstreetlightoff', bgs..'ayo/ayo_streetNoLight', -600, -350);
	setScrollFactor('newstreetlightoff', 1, 1);

	makeAnimatedLuaSprite('rain','bgs/annoyed_rain',-775,-2500)
	addAnimationByPrefix('rain','animated','rain',24,true)
	scaleObject('rain', 5, 5);
	setScrollFactor('rain', 0, 0);
	setObjectCamera('rain', 'camgame');
	setProperty('rain.alpha', 0.6)




	--addLuaSprite('hellsky', false);
	--addLuaSprite('hellsatan', false);
	--addLuaSprite('hellfront', false);
	--addLuaSprite('oldground', false);
	addLuaSprite('newsky', false);
	addLuaSprite('city', false);
	addLuaSprite('mountainsback', false);
	--addLuaSprite('mountains', false);
	addLuaSprite('hillfront', false);
	addLuaSprite('newstreetlightoff', false);
	addLuaSprite('newstreet', false);
	--addLuaSprite('weeb', false);
	addLuaSprite('rain', true);
        addLuaSprite('flash', true);
        addLuaSprite('flash1', true);
	--addLuaSprite('newstreet2', false);
	--addLuaSprite('deadly', true);


end

function onBeatHit()
    if curBeat == 32 or curBeat == 256 then
	doTweenAlpha('newstreet1', 'newstreet', 1, 0.01, 'linear')
end
    if curBeat == 196 then
	doTweenAlpha('newstreet1', 'newstreet', 0, 0.01, 'linear')
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

if n == 'Flash Screen black' then

   makeLuaSprite('flash1', '', 0, 0);

        makeGraphic('flash1',1280,720,'000000')

      addLuaSprite('flash1', true);

      setLuaSpriteScrollFactor('flash1',0,0)

      setProperty('flash1.scale.x',2)

      setProperty('flash1.scale.y',2)

      setProperty('flash1.alpha',0)

setProperty('flash1.alpha',1)

doTweenAlpha('flTw1','flash1',0,v1,'linear')

end

end
