tests
testNoHarvesterKeepsTheCounter
	cell nonHarvestTime: 2.
	cell updateNonHarvestTime.
	self assert: cell nonHarvestTime equals: 2