initialization
recordGain
	harvesters do: [ :each | each recordGain ].
	gains add: (harvesters inject: 0 into: [ :sum :each | sum + each collectedBiomass ])