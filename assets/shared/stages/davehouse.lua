local engine = {"Bambi Engine", "Dave Engine", "Tristan Engine"}
local a = 1

function onCreate()
	a = getRandomInt(1, table.getn(engine))

	makeLuaSprite('grass', 'bgs/grass', -250, 230);
	scaleObject('grass', 1.2, 1.2);
	setScrollFactor('grass', 1, 1);
	--setProperty('grpNoteSplashes.visible', false)

	makeLuaSprite('sky', 'bgs/sky', -500, -500);
	scaleObject('sky', 1.2, 1.2);
	setScrollFactor('sky', 1, 1);

	makeLuaSprite('gate', 'bgs/gate', -50, -50);
	scaleObject('gate', 1.2, 1.2);
	setScrollFactor('gate', 1, 1);

	makeLuaText('funnikade', 'Dave-Fnf - ' .. difficultyName .. ' | '..engine[a]..' (KE 1.2)',getProperty('healthBarBG.width'), 5 ,10)
	setTextSize('funnikade', 16)
	setTextFont('funnikade', 'comic.ttf')
	setTextBorder('funnikade', 1, '000000')

	addLuaSprite('sky', false);
	addLuaSprite('gate', false);
	addLuaSprite('grass', false);
	addLuaText('funnikade')

end

function onUpdate()
	for i=0,4,1 do
		    --setPropertyFromGroup('playerStrums', i, 'texture', 'noteSkins/ron');
		    end
		
        for i = 0, getProperty('unspawnNotes.length')-1 do
		    if getPropertyFromGroup('unspawnNotes', i, 'mustPress') == true then
			    --setPropertyFromGroup('unspawnNotes', i, 'texture', 'noteSkins/ron');	
			end
        end

end

function onBeatHit()
	if curBeat >= 101 and curBeat <= 111 then
		triggerEvent('Play Animation','err','Dad')
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