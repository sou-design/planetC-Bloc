accessing
place: aHousehold on: aCell
	| harvester |
	self isHouseholdsTurn ifFalse: [ ^ nil ].
	harvester := aHousehold nextUnplacedHarvester.
	harvester ifNil: [ ^ nil ].
	harvester moveTo: aCell.
	^ harvester