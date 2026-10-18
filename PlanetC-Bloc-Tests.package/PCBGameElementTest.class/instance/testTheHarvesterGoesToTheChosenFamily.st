tests
testTheHarvesterGoesToTheChosenFamily
	| cell family |
	game proceed.
	family := game households at: 3.
	cell := game cellNumbered: 7.
	(element familyButtons at: 3) click.
	game clickOnCell: cell.
	self assert: (cell harvestersOf: family) size equals: 1.
	self assert: (cell harvestersOf: game households first) isEmpty