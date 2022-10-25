function onEvent(name, value1, value2)
    if name == 'Reset Strum Position' then
        setPropertyFromGroup('opponentStrums', 0, 'x', defaultOpponentStrumX0 + 40)
        setPropertyFromGroup('opponentStrums', 1, 'x', defaultOpponentStrumX1 + 40)
        setPropertyFromGroup('opponentStrums', 2, 'x', defaultOpponentStrumX2 + 40)
        setPropertyFromGroup('opponentStrums', 3, 'x', defaultOpponentStrumX2 + 40)
        setPropertyFromGroup('opponentStrums', 4, 'x', defaultOpponentStrumX3 + 40)

        setPropertyFromGroup('playerStrums', 0, 'x', defaultPlayerStrumX0)
        setPropertyFromGroup('playerStrums', 1, 'x', defaultPlayerStrumX1)
        setPropertyFromGroup('playerStrums', 2, 'x', defaultPlayerStrumX2)
        setPropertyFromGroup('playerStrums', 3, 'x', defaultPlayerStrumX3)
        setPropertyFromGroup('playerStrums', 4, 'x', defaultPlayerStrumX4)
        setProperty('boyfriend.x', 800)
        setProperty('dad.x', 150)
    end
end