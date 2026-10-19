tests
testAnUntouchedZoneGrowsAtTheStartOfRoundTwo
	| game zone |
	game := PCBGame new.
	zone := game cellNumbered: 7.
	zone biomass: 1.
	zone nonHarvestTime: 0.
	game proceed.     "round 1: families' turn"
	game proceed.     "harvest, nobody played"
	game proceed.     "round 2 starts: new biomass"
	self assert: zone biomass equals: 2