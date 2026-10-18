accessing
update
	self background: (self biomassColors at: cell biomass + 1).
	self border: (cell isProtected
		ifTrue: [ BlBorder paint: (Color fromHexString: 'C0392B') width: 4 ]
		ifFalse: [ BlBorder paint: (Color fromHexString: 'BDB5A3') width: 1 ]).
	idLabel text: (cell id printString asRopedText fontSize: 12; yourself).
	chipsBox removeChildren.
	cell householdsHere do: [ :household |
		chipsBox addChild: (self chipFor: household count: (cell harvestersOf: household) size) ].
		self updateBirds