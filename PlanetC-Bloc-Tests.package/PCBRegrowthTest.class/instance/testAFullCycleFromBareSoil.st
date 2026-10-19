tests
testAFullCycleFromBareSoil
	cell biomass: 0.
	cell regrowBiomass.
	self assert: cell biomass equals: 1.
	cell regrowBiomass.
	self assert: cell biomass equals: 1.
	cell regrowBiomass.
	self assert: cell biomass equals: 0.
	cell regrowBiomass.
	self assert: cell biomass equals: 0