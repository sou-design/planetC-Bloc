initialization
totalGain
	^ gains inject: 0 into: [ :sum :each | sum + each ]