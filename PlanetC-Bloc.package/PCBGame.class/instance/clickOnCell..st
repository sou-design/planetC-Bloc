accessing
clickOnCell: aCell
	self isRangerTurn ifTrue: [ ^ self chooseCell: aCell ].
	self placeHarvesterOf: activeHousehold on: aCell