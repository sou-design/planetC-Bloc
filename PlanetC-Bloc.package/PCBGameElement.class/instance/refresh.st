as yet unclassified
refresh
	roundLabel text: (self roundText asRopedText fontSize: 18; yourself).
	actionButton label: self actionLabel.
	birdsButton label: (game birdsVisible ifTrue: [ 'Hide birds' ] ifFalse: [ 'Show birds' ]).
	cellElements do: [ :each | each showBirds: game birdsVisible ].
	self updateVisibility.
	self updateResults.
	familyButtons with: game households do: [ :button :household |
		| active |
		active := household == game activeHousehold.
		button border: (active
			ifTrue: [ BlBorder paint: Color black width: 4]
			ifFalse: [ BlBorder empty ]).
		button transformDo: [ :t |
			t scaleBy: (active ifTrue: [ 1.1 ] ifFalse: [ 1 ]) ] ].