tests
testAHarvestResetsTheCounter
	cell nonHarvestTime: 2.
	PCBHarvester new moveTo: cell.
	cell updateNonHarvestTime.
	self assert: cell nonHarvestTime equals: 0