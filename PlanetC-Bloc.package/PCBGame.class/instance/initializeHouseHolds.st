accessing
initializeHouseHolds
	households := (1 to: self nbFamilies) collect: [ :i |
		PCBHousehold new
			game: self;
			color: (self familyColors at: i);
			yourself ]