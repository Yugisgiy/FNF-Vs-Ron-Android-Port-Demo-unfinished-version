function onCreate()
	makeLuaSprite('whitebg', '', 0, 0);
	makeGraphic('whitebg',1280,720,'FFFFFF')
	setLuaSpriteScrollFactor('whitebg',0,0)
	setProperty('whitebg.scale.x',2)
	setProperty('whitebg.scale.y',2)
	setProperty('whitebg.alpha',0)

	makeLuaSprite('flash', '', 0, 0);
	makeGraphic('flash',1280,720,'D0D0D0')
	setLuaSpriteScrollFactor('flash',0,0)
	setProperty('flash.scale.x',2)
	setProperty('flash.scale.y',2)
	setProperty('flash.alpha',0)
	setObjectCamera('flash', 'hud');

	makeLuaSprite('allblack', '', 0, 0)
	setScrollFactor('allblack', 0, 0)
	makeGraphic('allblack', 3840, 2160, '000000')
	setProperty('allblack.alpha', 0)
	screenCenter('allblack', 'xy')
	setObjectCamera('allblack', 'hud');

	makeLuaSprite('ss', 'bgs/ss_gradient', -700, -400);
	setLuaSpriteScrollFactor('ss', 0, 0);
	scaleObject('ss', 1, 1)
	setObjectCamera('ss', 'hud');
	doTweenColor('ss', 'ss', '000000', 0.001, 'linear')

	makeLuaSprite('line', 'bgs/scanlines', -700, -350);
	setLuaSpriteScrollFactor('line', 0, 0);
	scaleObject('line', 3, 3)
	setProperty('line.alpha', 0)
	setObjectCamera('line', 'hud');

        makeLuaSprite('barleft',nil,-250,-150)
        makeGraphic('barleft', 400, 1000, '000000')
        setObjectCamera('barleft','hud')
	setScrollFactor('barleft', 0, 0)
	setProperty('barleft.alpha', 0)

        makeLuaSprite('barright',nil,1120,-150)
        makeGraphic('barright', 400, 1000, '000000')
        setObjectCamera('barright','hud')
	setScrollFactor('barright', 0, 0)
	setProperty('barright.alpha', 0)


	addLuaSprite('whitebg', false);
    addLuaSprite('line', true);
    addLuaSprite('ss', true);
 	addLuaSprite('barleft',true)
    addLuaSprite('barright',true)
	addLuaSprite('allblack', true)
    addLuaSprite('flash', true);

end


function onStepHit()
if curStep == 768 or curStep == 1280 then
	setProperty('flash.alpha',1)
	doTweenAlpha('flTw','flash',0,2,'linear')
end
if curStep == 249 then
	setProperty("defaultCamZoom", 0.9)
end
if curStep == 256 then
	doTweenColor('ss', 'ss', 'D0D0D0', 0.001, 'linear')
	doTweenAlpha('bg','whitebg',1,0.001,'linear')
	setProperty('flash.alpha',1)
	doTweenAlpha('flTw','flash',0,2,'linear')
end
if curStep == 764 then
	doTweenAlpha('black','allblack',1,0.5,'linear')
end
if curStep == 768 then
	setProperty("defaultCamZoom", 1)
	triggerEvent('Change Character','dad','doyneSprited')
	triggerEvent('Change Character','bf','bfSprited')
	doTweenY('bfy', 'boyfriend', 560, 0.001, 'sineInOut')
	doTweenAlpha('black','allblack',0,0.01,'linear')
	doTweenAlpha('line','line',1,0.01,'linear')
	doTweenAlpha('barleft','barleft',1,0.01,'linear')
	doTweenAlpha('barright','barright',1,0.01,'linear')
	setProperty('flash.alpha',1)
	doTweenAlpha('flTw','flash',0,2,'linear')
end
if curStep == 1280 then
	triggerEvent('Change Character','dad','douyhe')
	triggerEvent('Change Character','bf','bf')
	doTweenAlpha('line','line',0,0.01,'linear')
	doTweenAlpha('barleft','barleft',0,0.01,'linear')
	doTweenAlpha('barright','barright',0,0.01,'linear')
end


end

function onTweenCompleted(name)
	if name == 'camz' then
		setProperty("defaultCamZoom",getProperty('camGame.zoom')) 
	end
end

opText = 'NOTE_assets'

function onCreatePost()
    luaDebugMode = true
    checkCharacters()
end

function onEvent(n) if n == 'Change Character' then checkCharacters() end end

function checkCharacters()
    if boyfriendName == 'bfSprited' then
        opText = 'noteSkins/PIXELNOTE_assets'

    else
        opText = 'NOTE_assets'
    end
end

function onSpawnNote(i)
    if getPropertyFromGroup('notes',i,'mustPress') then
        setPropertyFromGroup('notes',i,'texture',opText)
    end
end

function onUpdate()
	setProperty('gf.alpha',0)

    if curStep < 256 then
		setProperty('iconP2.alpha', 0)
		setProperty('iconP1.alpha', 0)
		setProperty('healthBarBG.alpha',0)
		setProperty('healthBar.alpha',0)
		setProperty('scoreTxt.alpha', 0)
	else
		setProperty('iconP2.alpha', 1)
		setProperty('iconP1.alpha', 1)
		setProperty('healthBarBG.alpha',0)
		setProperty('healthBar.alpha',0)
		setProperty('scoreTxt.alpha', 1)
	end

    for i = 0,4,1 do
        setPropertyFromGroup('playerStrums',i,'texture',opText)
    end
    for i = 0,getProperty('notes.length')-1 do
        if getPropertyFromGroup('notes',i,'mustPress') then
            setPropertyFromGroup('notes',i,'texture',opText)
        end
    end
end

local angleshit = 1;
local anglevar = 1;
function onBeatHit()
    if curStep >= 256 and curStep <= 512 then
        if curBeat % 2 == 0 then
            angleshit = anglevar;
        else
            angleshit = -anglevar;
        end
        setProperty('camHUD.angle',angleshit*3)
        setProperty('camGame.angle',angleshit*3)

        doTweenAngle('turn', 'camHUD', 0, stepCrochet*0.003, 'circOut')
        --doTweenX('tuin', 'camHUD', -angleshit*8, crochet*0.001, 'linear')
        doTweenAngle('tt', 'camGame', 0, stepCrochet*0.003, 'circOut')
        --doTweenX('ttrn', 'camGame', -angleshit*8, crochet*0.001, 'linear')

    end

	if curStep >= 768 and curStep <= 1280 then
        if curBeat % 2 == 0 then
			doTweenAlpha('line','line',0.5,0.3,'linear')
        else
			doTweenAlpha('line','line',1,0.3,'linear')
        end
	end
end