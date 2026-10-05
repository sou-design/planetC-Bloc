initialization
initialize
	super initialize.
	cells := self initialBiomass collect: [ :each |
		PCBCell new
			biomass: each;
			yourself ].
	self initializeHouseHolds