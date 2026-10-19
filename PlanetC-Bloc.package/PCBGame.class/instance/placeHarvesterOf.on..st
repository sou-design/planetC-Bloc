accessing
placeHarvesterOf: aHousehold on: aCell
	| harvester |
	self isHouseholdsTurn ifFalse: [ ^ self ].
	harvester := aHousehold nextUnplacedHarvester.
	harvester ifNil: [ ^ self ].
	self place: harvester on: aCell