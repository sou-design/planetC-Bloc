event handling
updateVisibility
	| playing controls |
	playing := game isOver
		ifTrue: [ BlVisibility gone ]
		ifFalse: [ BlVisibility visible ].
	controls := (game isOver or: [ household notNil ])
		ifTrue: [ BlVisibility gone ]
		ifFalse: [ BlVisibility visible ].
	board visibility: playing.
	actionButton visibility: controls.
	birdsButton visibility: controls.
	familyButtons with: game households do: [ :button :each |
		button visibility: (self visibilityOfButtonFor: each) ]