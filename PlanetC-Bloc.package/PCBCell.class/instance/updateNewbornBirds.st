accessing
updateNewbornBirds
	| disturbedCount disturbanceRate |
	self hasEnoughBiomass ifFalse: [ ^ nbNewBorns := 0 ].
	self hasHarvesters ifTrue: [ ^ nbNewBorns := 0 ].
	disturbedCount := neighbours count: [ :cell | cell hasHarvesters ].
	disturbanceRate := neighbours isEmpty
		ifTrue: [ 0 ]
		ifFalse: [ disturbedCount / neighbours size asFloat ].
	nbNewBorns := disturbanceRate >= 0.5
		ifTrue: [ 0 ]
		ifFalse: [ disturbanceRate > 0.2 ifTrue: [ 1 ] ifFalse: [ 2 ] ].
	newbornBirds := newbornBirds + nbNewBorns.
	self notifyChanged