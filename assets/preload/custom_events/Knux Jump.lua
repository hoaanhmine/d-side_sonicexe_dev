function onCreate()
	makeLuaSprite('knuxjump', 'Xenostage/P3_Knuckles', -100, -50);
	setScrollFactor('knuxjump', 0, 0);
	setObjectCamera('knuxjump', 'other');
	scaleObject('knuxjump',1.15,1.15)
	addLuaSprite('knuxjump',true)
	setProperty('knuxjump.visible', false)
end

function onCreatePost()
	setObjectOrder('knuxjump', getObjectOrder('creep') - 1)
end

function onEvent(name, value1)
    if name == "Knux Jump" then
		playSound('KnucklesScreamLOL', 0.06)
		setSoundVolume('KnucklesScreamLOL', 0.06)
		setProperty('knuxjump.visible', true)
		runTimer('jummpK', 0.25);
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'jummpK' then
		setProperty('knuxjump.visible', false)
	end
end