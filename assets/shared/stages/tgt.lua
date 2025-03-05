function onCreate()
	makeLuaSprite('ground', 'bgs/tgt', -1000, -620);
	scaleObject('ground', 1.2, 1.2);
	setScrollFactor('ground', 0.9, 0.9);
	setProperty('grpNoteSplashes.visible', false)

	addLuaSprite('ground', false);

end

function onUpdate(elapsed)
	for i=0,4,1 do
		    setPropertyFromGroup('playerStrums', i, 'texture', 'noteSkins/demon');
		    end
		
        for i = 0, getProperty('unspawnNotes.length')-1 do
		    if getPropertyFromGroup('unspawnNotes', i, 'mustPress') == true then
			    setPropertyFromGroup('unspawnNotes', i, 'texture', 'noteSkins/demon');	
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