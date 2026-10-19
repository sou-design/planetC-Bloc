running
testTheSecondRegrowthIsStable
	cell regrowBiomass.
	cell regrowBiomass.
	self assert: cell biomass equals: 2.
	self assert: cell nonHarvestTime equals: 2