local engine = {"Bambi Engine", "Dave Engine", "Tristan Engine"}
local a = 1
local bgs = 'bgs/newbgtest/'

function onCreate()
	a = getRandomInt(1, table.getn(engine))
	setProperty('grpNoteSplashes.visible', false)

	makeLuaSprite('sky', bgs..'slammed/sky', -500, -500);
	scaleObject('sky', 1.2, 1.2);
	setScrollFactor('sky', 0.8, 0.8);

	makeLuaSprite('flatgrass', bgs..'slammed/gm_flatgrass', 400, 140);
	scaleObject('flatgrass', 0.3, 0.3);
	setScrollFactor('flatgrass', 0.8, 0.8);

	makeLuaSprite('hills', bgs..'slammed/orangey hills', 80, 200);
	scaleObject('hills', 1.2, 1.2);
	setScrollFactor('hills', 0.8, 0.8);

	makeLuaSprite('house', bgs..'slammed/funfarmhouse', 80, 100);
	scaleObject('house', 1, 1);
	setScrollFactor('house', 0.8, 0.8);

	makeLuaSprite('grass', bgs..'slammed/grass lands', -830, 460);
	scaleObject('grass', 1.2, 1.2);
	setScrollFactor('grass', 1, 1);

	makeLuaSprite('corn', bgs..'slammed/cornFence', -590, 90);
	scaleObject('corn', 1.2, 1.2);
	setScrollFactor('corn', 1, 1);

	makeLuaSprite('corn2', bgs..'slammed/cornFence2', 1190, 90);
	scaleObject('corn2', 1.2, 1.2);
	setScrollFactor('corn2', 1, 1);

	makeLuaSprite('bag', bgs..'slammed/cornbag', 1300, 500);
	scaleObject('bag', 1.2, 1.2);
	setScrollFactor('bag', 1, 1);

	makeLuaSprite('sign', bgs..'slammed/sign', -115, 280);
	scaleObject('sign', 1.2, 1.2);
	setScrollFactor('sign', 1, 1);

	makeLuaText('funnikade', songName..' - ' .. difficultyName .. ' | '..engine[a]..' (KE 1.2)',getProperty('healthBarBG.width'), 5 ,10)
	setTextSize('funnikade', 16)
	setTextFont('funnikade', 'comic.ttf')
	setTextBorder('funnikade', 1, '000000')

	addLuaSprite('sky', false);
	addLuaSprite('flatgrass', false);
	addLuaSprite('hills', false);
	addLuaSprite('house', false);
	addLuaSprite('grass', false);
	addLuaSprite('corn', false);
	addLuaSprite('corn2', false);
	addLuaSprite('sign', false);
	addLuaSprite('bag', false);
	addLuaText('funnikade')

end

function onUpdate()
	for i=0,4,1 do
		    setPropertyFromGroup('playerStrums', i, 'texture', 'noteSkins/ron');
		    end
		
        for i = 0, getProperty('unspawnNotes.length')-1 do
		    if getPropertyFromGroup('unspawnNotes', i, 'mustPress') == true then
			    setPropertyFromGroup('unspawnNotes', i, 'texture', 'noteSkins/ron');	
			end
        end

end

function onBeatHit()
	if curBeat >= 101 and curBeat <= 111 then
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