as yet unclassified
openAllOn: aGame
	| master space |
	master := self new game: aGame; yourself.
	master playersHaveWindows: true.
	space := BlSpace new.
	space title: 'Game master'.
	space extent: 1000 @ 1000.
	space root addChild: master.
	space show.
	aGame households do: [ :each | self openOn: aGame household: each ]