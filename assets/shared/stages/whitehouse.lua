function onCreate()
	makeLuaSprite('ground', 'bgs/newbgtest/official-debate/whitehouse', -200, -370);
	scaleObject('ground', 2, 2);
	setScrollFactor('ground', 1, 1);
	setProperty('grpNoteSplashes.visible', false)

	makeLuaSprite('flash', '', 0, 0);
	makeGraphic('flash',1280,720,'ffffff')
	setLuaSpriteScrollFactor('flash',0,0)
	setProperty('flash.scale.x',2)
	setProperty('flash.scale.y',2)
	setProperty('flash.alpha',0)

	makeLuaSprite('whitebg', '', 0, 0)
	setScrollFactor('whitebg', 0, 0)
	makeGraphic('whitebg', 3840, 2160, 'ffffff')
	setProperty('whitebg.alpha', 0)
	screenCenter('whitebg', 'xy')


	addLuaSprite('ground', false);
	addLuaSprite('whitebg', false)
	addLuaSprite('flash', true);
end

function onUpdatePost()
        P1Mult = getProperty('healthBar.x') + ((getProperty('healthBar.width') * getProperty('healthBar.percent') * 0.01) + (150 * getProperty('iconP1.scale.x') - 150) / 2 - 26)
        P2Mult = getProperty('healthBar.x') + ((getProperty('healthBar.width') * getProperty('healthBar.percent') * 0.01) - (150 * getProperty('iconP2.scale.x')) / 2 - 26 * 2)
	setProperty('boyfriend.x',-480);
	setProperty('boyfriend.y',-180);
        setProperty('iconP1.flipX',true)
        setProperty('iconP2.flipX',true)
        setProperty('healthBar.flipX',true)
        setProperty('iconP1.x',P1Mult - 110)
        setProperty('iconP1.origin.x',240)
        setProperty('iconP2.x',P2Mult + 110)
        setProperty('iconP2.origin.x',-100)

	for i=0,4,1 do
		    setPropertyFromGroup('opponentStrums', i, 'x', _G['defaultPlayerStrumX'..i])
		    setPropertyFromGroup('playerStrums', i, 'x', _G['defaultOpponentStrumX'..i])
		    setPropertyFromGroup('playerStrums', i, 'texture', 'noteSkins/ron');
		    end
		
        for i = 0, getProperty('unspawnNotes.length')-1 do
		    if getPropertyFromGroup('unspawnNotes', i, 'mustPress') == true then
			    setPropertyFromGroup('unspawnNotes', i, 'texture', 'noteSkins/ron');	
			end
        end

	if curStep <= 1112 then
		setProperty('gf.alpha', 0);
	else
		setProperty('gf.alpha', 1);
	end
end

function onStepHit()
	if curStep == 984 then
		doTweenColor('badapplexd', 'boyfriend', '000000', 0.001, 'linear')
		doTweenColor('badapplexd1', 'dad', '000000', 0.001, 'linear')
		doTweenAlpha('applebadxd69', 'whitebg', 1, 0.001, 'linear')
	end

	if curStep == 1112 then
		doTweenColor('badapplexd', 'boyfriend', 'FFFFFF', 0.001, 'linear')
		doTweenColor('badapplexd1', 'dad', 'FFFFFF', 0.001, 'linear')
		doTweenAlpha('applebadxd69', 'whitebg', 0, 0.001, 'linear')
	end

	if curStep == 984 or curStep == 1112 or curStep == 1176 then
		triggerEvent('Flash Screen','1','')
	end

	if curStep == 1176 then
		runHaxeCode([[game.iconP2.changeIcon('trump')]]);
		triggerEvent('Change Scroll Speed','1.2','')
	end

end

function onEvent(n,v1,v2)

if n == 'Flash Screen' then

setProperty('flash.alpha',1)

doTweenAlpha('flTw','flash',0,v1,'linear')

end

end