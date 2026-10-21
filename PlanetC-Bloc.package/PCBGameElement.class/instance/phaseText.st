as yet unclassified
phaseText
	game isReady ifTrue: [ ^ 'waiting for the game master to start the round' ].
	game isNewBiomass ifTrue: [ ^ 'look at the new biomass' ].
	game isRangerTurn ifTrue: [ ^ 'the ranger protects up to ' , game maxProtectedCells printString , ' zones' ].
	game isHouseholdsTurn ifTrue: [ ^ 'families place their 4 harvesters' ].
	^ ''