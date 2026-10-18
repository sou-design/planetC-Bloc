initialization
initialize
	super initialize.
	announcer := Announcer new.
	totalNewborns := 0.
	birdsVisible := true.
	cells := self initialBiomass withIndexCollect: [ :each :index |
		PCBCell new
			id: index;
			row: index - 1 // self columns + 1;
			column: index - 1 \\ self columns + 1;
			biomass: each;
			yourself ].
	self initializeNeighbourhoods.
	self initializeHouseHolds.
	currentRound := 1.
	maxRounds := 5.
	phase := #ready.
	activeHousehold := households first