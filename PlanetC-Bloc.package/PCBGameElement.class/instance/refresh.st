as yet unclassified
refresh
	roundLabel text: (self roundText asRopedText fontSize: 18; yourself).
	actionButton label: self actionLabel.
	birdsButton label: (game birdsVisible ifTrue: [ 'Hide birds' ] ifFalse: [ 'Show birds' ]).
	cellElements do: [ :each | each showBirds: game birdsVisible ].
	familyButtons with: game households do: [ :button :each |
		button border: (each == game activeHousehold
			ifTrue: [ BlBorder paint: Color black width: 3 ]
			ifFalse: [ BlBorder empty ]) ].
	self updateVisibility.
	self updateResults