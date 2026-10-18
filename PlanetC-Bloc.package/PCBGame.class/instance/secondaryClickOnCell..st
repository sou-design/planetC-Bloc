accessing
secondaryClickOnCell: aCell
	self isHouseholdsTurn ifTrue: [ ^ self takeBack: activeHousehold from: aCell ]