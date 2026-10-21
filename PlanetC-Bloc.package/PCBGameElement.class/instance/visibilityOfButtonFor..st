accessing
visibilityOfButtonFor: aHousehold
	game isHouseholdsTurn ifFalse: [ ^ BlVisibility gone ].
	household ifNil: [
		^ playersHaveWindows
			ifTrue: [ BlVisibility gone ]
			ifFalse: [ BlVisibility visible ] ].
	^ household == aHousehold
		ifTrue: [ BlVisibility visible ]
		ifFalse: [ BlVisibility gone ]