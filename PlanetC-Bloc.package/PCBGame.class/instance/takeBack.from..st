accessing
takeBack: aHousehold from: aCell
	| here |
	self isHouseholdsTurn ifFalse: [ ^ nil ].
	here := aCell harvestersOf: aHousehold.
	here isEmpty ifTrue: [ ^ nil ].
	^ here last leave