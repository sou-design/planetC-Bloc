initialization
game: aGame
	game := aGame.
	game announcer when: PCBGameChanged send: #onGameChanged: to: self.
	self addChild: self buildTopBar.
	board := BlElement new
		layout: (BlGridLayout horizontal columnCount: game columns; cellSpacing: 6; yourself);
		margin: (BlInsets top: 16);
		constraintsDo: [ :c | c horizontal fitContent. c vertical fitContent ];
		yourself.
	cellElements := game cells collect: [ :cell |
		(PCBCellElement on: cell)
			addEventHandler: (PCBCellEventListener game: self);
			yourself ].
	board addChildren: cellElements.
	resultBox := BlElement new
		layout: (BlLinearLayout vertical cellSpacing: 4; yourself);
		padding: (BlInsets all: 10);
		constraintsDo: [ :c |
			c horizontal fitContent.
			c vertical fitContent ];
		yourself.
			self addChild: (BlElement new
		layout: (BlLinearLayout horizontal cellSpacing: 24; yourself);
		constraintsDo: [ :c |
			c horizontal fitContent.
			c vertical fitContent ];
		addChildren: { board. resultBox };
		yourself).
	self addChild: self buildFamiliesBar.
	self refresh