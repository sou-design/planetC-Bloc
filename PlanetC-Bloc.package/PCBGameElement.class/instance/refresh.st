as yet unclassified
refresh
	roundLabel text: (self roundText asRopedText fontSize: 18; yourself).
	actionButton label: self actionLabel.
	birdsButton label: (game birdsVisible ifTrue: [ 'Hide birds' ] ifFalse: [ 'Show birds' ]).
	cellElements do: [ :each | each showBirds: game birdsVisible ].
	self updateVisibility.
	self updateResults.
		familyButtons with: game households do: [ :button :household |
		button label: (household == game activeHousehold
			ifTrue: [ '> ' , household name ]
			ifFalse: [ household name ]) ].