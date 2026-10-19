running
testTheFirstRegrowthAddsOne
	cell regrowBiomass.
	self assert: cell biomass equals: 2.
	self assert: cell nonHarvestTime equals: 1