tests
testAfterAHarvestTheCellGrowsAgain
	| harvester |
	cell nonHarvestTime: 2.
	harvester := PCBHarvester new.
	harvester moveTo: cell.
	cell updateNonHarvestTime.
	harvester leave.
	cell regrowBiomass.
	self assert: cell biomass equals: 2.
	self assert: cell nonHarvestTime equals: 1