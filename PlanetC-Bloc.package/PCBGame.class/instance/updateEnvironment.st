accessing
updateEnvironment
	cells do: [ :cell | cell isProtected ifTrue: [ cell unprotect ] ].
	cells do: [ :cell | cell applyPendingHarvest ].
	self isFirstRound ifFalse: [ cells do: [ :cell | cell regrowBiomass ] ].
	cells do: [ :cell | cell installAdultBirds ].
	households do: [ :each | each leaveHarvesters ]