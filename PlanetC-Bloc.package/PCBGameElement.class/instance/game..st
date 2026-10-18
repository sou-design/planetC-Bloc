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
			addEventHandler: (PCBCellEventListener game: game);
			yourself ].
	board addChildren: cellElements.
	self addChild: board.
	self refresh