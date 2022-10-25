function onCreate()
	--the stupid ass annoying notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--pog properties
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Phantom Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'PhantomNote');
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', 0); --no damag damag
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', true);

		if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
			setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
		end
	end
	end
end

local healthDrain = 0;
local TSH = 0;
local PHits = 0;
function noteMiss(id, noteData, noteType)
	if noteType == 'Phantom Note' then
		healthDrain = healthDrain + 0.6;
		TSH = 0
		PHits = PHits + 1
	end
end

function onStepHit(elapsed)
	--i forgor how work
	TSH = TSH + 1
	if healthDrain > 0 then
		healthDrain = healthDrain - 0.2 * TSH/1000;
		setProperty('health', getProperty('health') - (0.1 * PHits/50));
		if healthDrain < 0 then
			healthDrain = 0;
		end
	end
end