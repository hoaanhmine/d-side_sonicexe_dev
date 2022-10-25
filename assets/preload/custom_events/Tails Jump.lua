function onCreate()
	makeLuaSprite('tailjump', 'Xenostage/P3_Tails', -100, -50);
	setScrollFactor('tailjump', 0, 0);
	setObjectCamera('tailjump', 'other');
	scaleObject('tailjump',1.15,1.15)
	addLuaSprite('tailjump',true)
	setProperty('tailjump.visible', false)
end

function onCreatePost()
	setObjectOrder('tailjump', getObjectOrder('creep') - 1)
end

function onEvent(name, value1)
    if name == "Tails Jump" then
		playSound('TailsScreamLOL', 0.05)
		setSoundVolume('TailsScreamLOL', 0.05)
		setProperty('tailjump.visible', true)
		runTimer('jummpT', 0.3);
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'jummpT' then
		setProperty('tailjump.visible', false)
	end
end