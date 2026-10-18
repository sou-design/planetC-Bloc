accessing
beginRound
	self updateEnvironment.
	self isFirstRound
		ifTrue: [ self startHouseholdsTurn ]
		ifFalse: [ phase := #newBiomass ]