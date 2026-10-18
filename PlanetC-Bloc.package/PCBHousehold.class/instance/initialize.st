initialization
initialize
	super initialize.
	gains := OrderedCollection new.
	harvesters := (1 to: 4) collect: [ :i |
		PCBHarvester new
			household: self;
			index: i;
			yourself ]