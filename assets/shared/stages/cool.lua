function onCreate()
	makeLuaSprite('ground', 'bgs/bg_less_concept', -600, -200);
	scaleObject('ground', 1, 1);
	setScrollFactor('ground', 0.9, 0.9);

	addLuaSprite('ground', false);

end
