instance creation
openOn: aGame
	| element space |
	element := self new game: aGame; yourself.
	space := BlSpace new.
	space title: 'PlanetC'.
	space extent: 1240 @ 1000.
	space root addChild: element.
	space show.
	^ element