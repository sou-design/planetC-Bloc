as yet unclassified
roundText
	game isOver ifTrue: [ ^ 'End of the game' ].
	^ 'Round ' , game currentRound printString , ' of ' , game maxRounds printString , ' - ' , self phaseText
