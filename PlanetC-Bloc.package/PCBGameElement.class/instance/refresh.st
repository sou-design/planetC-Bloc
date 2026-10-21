as yet unclassified
refresh
	roundLabel text: (self roundText asRopedText fontSize: 18; yourself).
	actionButton label: self actionLabel.
	birdsButton label: (game birdsVisible ifTrue: [ 'Hide birds' ] ifFalse: [ 'Show birds' ]).
	cellElements do: [ :each | each showBirds: game birdsVisible ].
	timerLabel text: (self timerText asRopedText fontSize: 24; bold; yourself).
	self updateVisibility .
	self updateResults