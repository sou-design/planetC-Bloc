running
testTheThirdRegrowthDeclines
	cell regrowBiomass.
	cell regrowBiomass.
	cell regrowBiomass.
	self assert: cell biomass equals: 1.
	self assert: cell nonHarvestTime equals: 2