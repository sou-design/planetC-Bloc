initialization
initialize
	super initialize.
	harvesters := (1 to: 4) collect: [ :i |
		PCBHarvester new
			household: self;
			yourself ]