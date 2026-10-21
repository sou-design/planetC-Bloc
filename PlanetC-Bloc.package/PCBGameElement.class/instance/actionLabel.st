accessing
actionLabel
	game isReady ifTrue: [ ^ 'Start round ' , game currentRound printString ].
	game isNewBiomass ifTrue: [ ^ 'Start the ranger''s turn' ].
	game isRangerTurn ifTrue: [ ^ 'End the ranger''s turn' ].
	game isHouseholdsTurn ifTrue: [ ^ 'Harvest and show results' ].
	^ 'Game over'