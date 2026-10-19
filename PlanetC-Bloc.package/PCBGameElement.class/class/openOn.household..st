as yet unclassified
openOn: aGame household: aHousehold
	| space |
	space := BlSpace new.
	space title: aHousehold name.
	space extent: 700 @ 750.
	space position: (aHousehold index * 60) @ (aHousehold index * 40).
	space root addChild: (self new game: aGame household: aHousehold; yourself).
	space show.
	^ space