accessing
clickEvent: anEvent
	| cell |
	cell := anEvent currentTarget cell.
	anEvent consumed: true.
	((anEvent isKindOf: BlSecondaryClickEvent) or: [ anEvent modifiers isShift ])
		ifTrue: [ game secondaryClickOnCell: cell ]
		ifFalse: [ game clickOnCell: cell ]