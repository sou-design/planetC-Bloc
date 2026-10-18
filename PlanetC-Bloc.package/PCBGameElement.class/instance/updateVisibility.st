event handling
updateVisibility
	| visibility |
	visibility := game isOver
		ifTrue: [ BlVisibility gone ]
		ifFalse: [ BlVisibility visible ].
	board visibility: visibility.
	actionButton visibility: visibility.
	birdsButton visibility: visibility.
	familyButtons do: [ :each | each visibility: visibility ]