function onCreate()
	makeLuaSprite('ground', 'bgs/wallmart', -600, -430);
	scaleObject('ground', 1, 1);
	setScrollFactor('ground', 0.9, 0.9);

	addLuaSprite('ground', false);

end
