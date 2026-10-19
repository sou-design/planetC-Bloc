tests
testTheBiomassNeverGoesBelowZero
	cell biomass: 0.
	cell nonHarvestTime: 2.
	cell regrowBiomass.
	self assert: cell biomass equals: 0