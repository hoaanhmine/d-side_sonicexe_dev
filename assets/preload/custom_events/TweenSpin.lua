function onEvent(n,v1,v2)
	if n == "TweenSpin" then
		runTimer('tweenstop',0.20);
		-- bf notespin
		noteTweenAngle('A',6 , 360 , 0.15, "circInOut")
		noteTweenAngle('B',7 , 360 , 0.15, "circInOut")
		noteTweenAngle('C',8 , 360 , 0.15, "circInOut")
		noteTweenAngle('D',9 , 360 , 0.15, "circInOut")
		noteTweenAngle('E',10 , 360 , 0.15, "circInOut")
		noteTweenAngle('F',11 , 360 , 0.15, "circInOut")

		-- oppt notespin
		noteTweenAngle('G',0 , 360 , 0.15, "circInOut")
		noteTweenAngle('H',1 , 360 , 0.15, "circInOut")
		noteTweenAngle('I',2 , 360 , 0.15, "circInOut")
		noteTweenAngle('J',3 , 360 , 0.15, "circInOut")
		noteTweenAngle('K',4 , 360 , 0.15, "circInOut")
		noteTweenAngle('L',5 , 360 , 0.15, "circInOut")
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'tweenstop' then
		noteTweenAngle('A',6 , 0 , 0.000000001, linear)
		noteTweenAngle('B',7 , 0 , 0.000000001, linear)
		noteTweenAngle('C',8 , 0 , 0.000000001, linear)
		noteTweenAngle('D',9 , 0 , 0.000000001, linear)
		noteTweenAngle('E',10, 0 , 0.000000001, linear)
		noteTweenAngle('F',11, 0 , 0.000000001, linear)

		-- oppt notespin
		noteTweenAngle('G',0 , 0 , 0.000000001, linear)
		noteTweenAngle('H',1 , 0 , 0.000000001, linear)
		noteTweenAngle('I',2 , 0 , 0.000000001, linear)
		noteTweenAngle('J',3 , 0 , 0.000000001, linear)
		noteTweenAngle('K',4 , 0 , 0.000000001, linear)
		noteTweenAngle('L',5 , 0 , 0.000000001, linear)
    end
end
