accessing
actionLabel
	game isReady ifTrue: [ ^ 'Start round ' , game currentRound printString ].
	game isNewBiomass ifTrue: [ ^ 'Ranger''s turn' ].
	game isRangerTurn ifTrue: [ ^ 'Families'' turn' ].
	game isHouseholdsTurn ifTrue: [ ^ 'Harvest' ].
	^ 'Game over'