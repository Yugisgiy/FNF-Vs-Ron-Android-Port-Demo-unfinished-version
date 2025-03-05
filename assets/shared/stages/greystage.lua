function onCreate()
	makeLuaSprite('background', 'bgs/newbgtest/gron/paperBack', -1000, -550);
	setScrollFactor('background', 0.9, 0.9);
    scaleObject('background', 2, 2);

	makeLuaSprite('dbackground', 'bgs/newbgtest/gron/paperFront', -600, -800);
	setScrollFactor('dbackground', 0.9, 0.9);
	scaleObject('dbackground', 2, 2);

	addLuaSprite('background', false);
	addLuaSprite('dbackground', false);
    setProperty("defaultCamZoom",0.7)

end


opText = 'NOTE_assets'

function onCreatePost()
    luaDebugMode = true
    checkCharacters()
end

function onEvent(n) if n == 'Change Character' then checkCharacters() end end

function checkCharacters()
    if boyfriendName == 'bf-gray' then
        opText = 'noteSkins/NOTEold_assets'

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
    doTweenY('dady', 'dad', 1400, 0.001, 'sineInOut')
    doTweenY('gfy', 'gf', 1350, 0.001, 'sineInOut')
	doTweenY('bfy', 'boyfriend', 1700, 0.001, 'sineInOut')
    doTweenX('dadx', 'dad', 750, 0.001, 'sineInOut')
    doTweenX('gfx', 'gf', 1900, 0.001, 'sineInOut')
	doTweenX('bfx', 'boyfriend', 2000, 0.001, 'sineInOut')

    for i = 0,4,1 do
        setPropertyFromGroup('playerStrums',i,'texture',opText)
    end
    for i = 0,getProperty('notes.length')-1 do
        if getPropertyFromGroup('notes',i,'mustPress') then
            setPropertyFromGroup('notes',i,'texture',opText)
        end
    end
end
