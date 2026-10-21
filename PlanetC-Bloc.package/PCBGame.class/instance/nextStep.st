as yet unclassified
nextStep
	secondsLeft := 0.
	self isReady ifTrue: [ ^ self beginRound ].
	self isNewBiomass ifTrue: [
		phase := #rangerTurn.
		^ self startTimer: 10 ].
	self isRangerTurn ifTrue: [ ^ self startHouseholdsTurn ].
	self isHouseholdsTurn ifTrue: [ ^ self resolveRound ]