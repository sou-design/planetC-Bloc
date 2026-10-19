tests
testNoRegrowthWhileHarvestersAreThere
	PCBHarvester new moveTo: cell.
	cell regrowBiomass.
	self assert: cell biomass equals: 1.
	self assert: cell nonHarvestTime equals: 0