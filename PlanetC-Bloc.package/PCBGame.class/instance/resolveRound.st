accessing
resolveRound
	self applyActions.
	households do: [ :each | each recordGain ].
	phase := currentRound > maxRounds
		ifTrue: [ #ended ]
		ifFalse: [ #ready ]