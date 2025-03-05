
function onCreate()
	-- background shit
	makeLuaSprite('ground', 'bgs/madRonV1_ground', -600, -100);
	scaleObject('ground', 1, 1);
	setScrollFactor('ground', 1, 1);
	
	makeLuaSprite('sky', 'bgs/madRonV1_sky', 100, 150);
	scaleObject('sky', 1, 1);
	setScrollFactor('sky', 1, 1);

	makeLuaSprite('gradient', 'bgs/hellRon_gradient', -272, -150);
	setScrollFactor('gradient', 0, 0);
	scaleObject('gradient', 0.75, 0.75);


	addLuaSprite('sky', false);
	addLuaSprite('ground', false);
	addLuaSprite('gradient', true);

end

function onUpdate()
	runHaxeCode([[game.iconP1.changeIcon('oldbf')]]);
	if curStep == 144 then
		doTweenAngle('turn', 'camGame', 180, crochet/150, 'backInOut')
		doTweenAngle('turn1', 'sky', 180, crochet/150, 'backInOut')
end
	if curStep == 272 then
		doTweenAngle('turn', 'camGame', 0, crochet/150, 'backInOut')
		doTweenAngle('turn1', 'sky', 0, crochet/150, 'backInOut')
end
	if curStep == 400 then
		doTweenAngle('turn', 'camGame', 180, crochet/150, 'backInOut')
		doTweenAngle('turn1', 'sky', 180, crochet/150, 'backInOut')
end
	if curStep == 656 then
		doTweenAngle('turn', 'camGame', 0, crochet/150, 'backInOut')
		doTweenAngle('turn1', 'sky', 0, crochet/150, 'backInOut')
end

end