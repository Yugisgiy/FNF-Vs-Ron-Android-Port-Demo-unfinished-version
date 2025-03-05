
function onCreate()
	-- background shit
	makeLuaSprite('ground', 'bgs/pissedRon_ground', -600, -250);
	scaleObject('ground', 1, 1);
	setScrollFactor('ground', 1.1, 1.1);
	
	makeLuaSprite('sky', 'bgs/pissedRon_sky', -500, -300);
	scaleObject('sky', 1, 1);
	setScrollFactor('sky', 0.3, 0.3);

	makeLuaSprite('cloud', 'bgs/pissedRon_clouds', -500, -300);
	scaleObject('cloud', 1, 1);
	setScrollFactor('cloud', 0.3, 0.3);

	makeLuaSprite('hellfront', 'hellfront', -900, -300);
	scaleObject('hellfront', 1, 1);
	setScrollFactor('hellfront', 1.1, 1.1);
	
	makeLuaSprite('hellsky', 'hellsky', -800, -150);
	scaleObject('hellsky', 1.5, 1.5);
	setScrollFactor('hellsky', 0.3, 0.3);

	makeLuaSprite('hellsatan', 'hellsatan', -100, -400);
	setScrollFactor('hellsatan', 0, 0);
	scaleObject('hellsatan', 1.3, 1.3);

	makeLuaText('funnikade', songName .. ' - ' .. difficultyName .. ' | KE 1.5.4 (ron eidtion)',getProperty('healthBarBG.width'), 5 ,10)
	setTextSize('funnikade', 16)
	setTextFont('funnikade', 'default.ttf')
	setTextBorder('funnikade', 1, '000000')

	addLuaSprite('sky', false);
	addLuaSprite('cloud', false);
	addLuaSprite('ground', false);
	addLuaText('funnikade')
end

function onUpdate()
	runHaxeCode([[game.iconP1.changeIcon('oldbf')]]);
end