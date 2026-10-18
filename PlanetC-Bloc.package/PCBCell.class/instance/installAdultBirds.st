accessing
installAdultBirds
	adultBirds := self hasEnoughBiomass ifTrue: [ 1 ] ifFalse: [ 0 ].
	newbornBirds := 0.
	self notifyChanged