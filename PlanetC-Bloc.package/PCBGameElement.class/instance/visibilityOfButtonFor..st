accessing
visibilityOfButtonFor: aHousehold
	game isOver ifTrue: [ ^ BlVisibility gone ].
	household ifNil: [
		^ playersHaveWindows
			ifTrue: [ BlVisibility gone ]
			ifFalse: [ BlVisibility visible ] ].
	^ household == aHousehold
		ifTrue: [ BlVisibility visible ]
		ifFalse: [ BlVisibility gone ]