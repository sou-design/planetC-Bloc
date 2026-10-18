accessing
finish
	(self isReady and: [ currentRound > 1 ]) ifFalse: [ ^ self ].
	maxRounds := currentRound - 1.
	phase := #ended.
	self notifyChanged