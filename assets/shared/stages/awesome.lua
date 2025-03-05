function onCreate()
	makeLuaSprite('ground', 'bgs/newbgtest/awesomeron/bg', -550, -50);
	scaleObject('ground', 4, 4);
	setScrollFactor('ground', 1, 1);

      	--setProperty("defaultCamZoom",0.2)

	addLuaSprite('ground', false);
end
