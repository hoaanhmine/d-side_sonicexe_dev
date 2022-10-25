function onEvent(name, value1, value2)
    if name == 'Invert Strum Position' then
        setPropertyFromGroup('playerStrums', 0, 'x', defaultOpponentStrumX0 + 25)
        setPropertyFromGroup('playerStrums', 1, 'x', defaultOpponentStrumX1 + 25)
        setPropertyFromGroup('playerStrums', 2, 'x', defaultOpponentStrumX2 + 25)
        setPropertyFromGroup('playerStrums', 3, 'x', defaultOpponentStrumX3 + 25)
        setPropertyFromGroup('playerStrums', 4, 'x', defaultOpponentStrumX4 + 25)

        setPropertyFromGroup('opponentStrums', 0, 'x', defaultPlayerStrumX0 + 50)
        setPropertyFromGroup('opponentStrums', 1, 'x', defaultPlayerStrumX1 + 50)
        setPropertyFromGroup('opponentStrums', 2, 'x', defaultPlayerStrumX2 + 50)
        setPropertyFromGroup('opponentStrums', 3, 'x', defaultPlayerStrumX2 + 50)
        setPropertyFromGroup('opponentStrums', 4, 'x', defaultPlayerStrumX3 + 50)
		setProperty('boyfriend.x', 150)
        setProperty('dad.x', 800)
    end
end