tests
testTheBiomassNeverGoesAboveThree
	cell biomass: 3.
	cell regrowBiomass.
	self assert: cell biomass equals: 3.
	self assert: cell nonHarvestTime equals: 1