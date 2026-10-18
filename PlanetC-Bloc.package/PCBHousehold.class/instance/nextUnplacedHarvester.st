initialization
nextUnplacedHarvester
	^ harvesters detect: [ :each | each isPlaced not ] ifNone: [ nil ]