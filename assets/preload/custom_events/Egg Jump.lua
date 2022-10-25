function onCreate()
	makeLuaSprite('eggjump', 'Xenostage/P3_Eggman', -115, -50);
	setScrollFactor('eggjump', 0, 0);
	setObjectCamera('eggjump', 'other');
	scaleObject('eggjump',1.15,1.15)
	addLuaSprite('eggjump',true)
	setProperty('eggjump.visible', false)
end

function onCreatePost()
	setObjectOrder('eggjump', getObjectOrder('creep') - 1)
end

function onEvent(name, value1)
    if name == "Egg Jump" then
		playSound('EggmanScreamLOL', 0.03)
		setSoundVolume('EggmanScreamLOL', 0.03)
		setProperty('eggjump.visible', true)
		runTimer('jummpE', 0.3);
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'jummpE' then
		setProperty('eggjump.visible', false)
	end
end