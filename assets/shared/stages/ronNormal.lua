local bgs = 'bgs/newbgtest/'

function onCreate()
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

--wasted
	makeLuaSprite('2newsky', bgs..'wasted/wasted_sky', -600, -350);
	setScrollFactor('2newsky', 0.5, 0.5);
	setProperty('2newsky.alpha', 0)

	makeLuaSprite('2newstreet', bgs..'wasted/wasted_street', -600, -350);
	setScrollFactor('2newstreet', 1, 1);
	setProperty('2newstreet.alpha', 0)

	makeLuaSprite('2city', bgs..'wasted/wasted_city', -600, -350);
	setScrollFactor('2city', 0.5, 0.5);
	setProperty('2city.alpha', 0)

	makeLuaSprite('2hillfront', bgs..'wasted/wasted_hillfront', -600, -350);
	setScrollFactor('2hillfront', 0.6, 0.6);
	setProperty('2hillfront.alpha', 0)

	makeLuaSprite('2mountains', bgs..'wasted/wasted_mountains', -600, -350);
	setScrollFactor('2mountains', 0.5, 0.5);
	setProperty('2mountains.alpha', 0)

	makeAnimatedLuaSprite('rain','bgs/annoyed_rain',-775,-2500)
	addAnimationByPrefix('rain','animated','rain',24,true)
	scaleObject('rain', 5, 5);
	setScrollFactor('rain', 0, 0);
	setObjectCamera('rain', 'camgame');
	setProperty('rain.alpha', 0)

	makeLuaSprite('whitebg', '', 0, 0)
	setScrollFactor('whitebg', 0, 0)
	makeGraphic('whitebg', 3840, 2160, '000000')
	setProperty('whitebg.alpha', 0)
	screenCenter('whitebg', 'xy')






	--addLuaSprite('hellsky', false);
	--addLuaSprite('hellsatan', false);
	--addLuaSprite('hellfront', false);
	--addLuaSprite('oldground', false);
	addLuaSprite('newsky', false);
	addLuaSprite('city', false);
	addLuaSprite('mountainsback', false);
	addLuaSprite('mountains', false);
	addLuaSprite('hillfront', false);
	addLuaSprite('newstreet', false);
	addLuaSprite('2newsky', false);
	addLuaSprite('2city', false);
	addLuaSprite('2mountains', false);
	addLuaSprite('2hillfront', false);
	addLuaSprite('2newstreet', false);
	addLuaSprite('whitebg', false)
	addLuaSprite('rain', true);
        addLuaSprite('flash', true);
	--addLuaSprite('weeb', false);
	--addLuaSprite('rain', true);
	--addLuaSprite('newstreet2', false);
	--addLuaSprite('deadly', true);


end

function onUpdate()
    if curStep == 1304 then
	triggerEvent('Change Scroll Speed','1.2','')
	doTweenAlpha('2newsky1', '2newsky', 1, 0.01, 'linear')
	doTweenAlpha('2city1', '2city', 1, 0.01, 'linear')
	doTweenAlpha('2mountains1', '2mountains', 1, 0.01, 'linear')
	doTweenAlpha('2hillfront1', '2hillfront', 1, 0.01, 'linear')
	doTweenAlpha('2newstreet1', '2newstreet', 1, 0.01, 'linear')
	doTweenAlpha('rain1', 'rain', 0.3, 0.01, 'linear')

end
end

function onBeatHit()
    if curBeat >= 68 and curBeat <= 326 then
       -- doTweenZoom('zooom', 'camHUD', 1, 0.4, 'circOut')
        --setProperty('camHUD.zoom', 1.1)
        if curBeat %2 == 0 then
            runTimer('redo', 0.5)
            if downscroll == false then
                noteTweenY('NoteMove5', 4, 50, 1, 'backOut')
                noteTweenY('NoteMove6', 5, 50, 1, 'backOut')
                noteTweenY('NoteMove7', 6, 50, 1, 'backOut')
                noteTweenY('NoteMove8', 7, 50, 1, 'backOut')
                noteTweenY('NoteMove1', 0, 50, 1, 'backOut')
                noteTweenY('NoteMove2', 1, 50, 1, 'backOut')
                noteTweenY('NoteMove3', 2, 50, 1, 'backOut')
                noteTweenY('NoteMove4', 3, 50, 1, 'backOut')
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
            noteTweenY('NoteMove5', 4, 50, 1, 'backOut')
            noteTweenY('NoteMove6', 5, 50, 1, 'backOut')
            noteTweenY('NoteMove7', 6, 50, 1, 'backOut')
            noteTweenY('NoteMove8', 7, 50, 1, 'backOut')
            noteTweenY('NoteMove1', 0, 50, 1, 'backOut')
            noteTweenY('NoteMove2', 1, 50, 1, 'backOut')
            noteTweenY('NoteMove3', 2, 50, 1, 'backOut')
            noteTweenY('NoteMove4', 3, 50, 1, 'backOut')
        end
        if downscroll == true then
            noteTweenY('NoteMove5', 4, 550, 1, 'backOut')
            noteTweenY('NoteMove6', 5, 550, 1, 'backOut')
            noteTweenY('NoteMove7', 6, 550, 1, 'backOut')
            noteTweenY('NoteMove8', 7, 550, 1, 'backOut')
            noteTweenY('NoteMove1', 0, 550, 1, 'backOut')
            noteTweenY('NoteMove2', 1, 550, 1, 'backOut')
            noteTweenY('NoteMove3', 2, 550, 1, 'backOut')
            noteTweenY('NoteMove4', 3, 550, 1, 'backOut')
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
	if n == 'blackbg' and string.lower(v1) == 'a' then
		doTweenAlpha('applebadxd69', 'whitebg', 1, v2, 'linear')
	end
	if n == 'blackbg' and string.lower(v1) == 'b' then
		doTweenAlpha('applebadxd', 'whitebg', 0, v2, 'linear')
	end


end