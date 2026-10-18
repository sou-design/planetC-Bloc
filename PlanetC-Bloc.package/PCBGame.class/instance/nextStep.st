accessing
nextStep
	self isReady ifTrue: [ ^ self beginRound ].
	self isNewBiomass ifTrue: [ ^ phase := #rangerTurn ].
	self isRangerTurn ifTrue: [ ^ self startHouseholdsTurn ].
	self isHouseholdsTurn ifTrue: [ ^ self resolveRound ]