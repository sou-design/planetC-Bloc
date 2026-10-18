accessing
clickOnCell: aCell
	self isRangerTurn ifTrue: [ ^ self chooseCell: aCell ].
	self isHouseholdsTurn ifTrue: [ ^ self place: activeHousehold on: aCell ]