accessing
placeHarvesterOf: aHousehold on: aCell
	self isHouseholdsTurn ifFalse: [ ^ self ].
	self place: aHousehold on: aCell