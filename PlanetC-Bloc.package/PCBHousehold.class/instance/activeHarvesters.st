initialization
activeHarvesters
	^ harvesters select: [ :each | each isPlaced ]