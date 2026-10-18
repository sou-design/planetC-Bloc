as yet unclassified
chipFor: aHousehold count: aNumber
	"A white pill with a dot in the family colour and the number of its harvesters here"
	| chip dot |
	chip := BlElement new
		layout: (BlLinearLayout horizontal cellSpacing: 3; yourself);
		padding: (BlInsets top: 2 left: 5 bottom: 2 right: 6);
		margin: (BlInsets all: 1);
		geometry: (BlRoundedRectangleGeometry cornerRadius: 9);
		background: (Color white alpha: 0.9);
		constraintsDo: [ :c | c horizontal fitContent. c vertical fitContent ];
		yourself.
	dot := BlElement new
		extent: 12 @ 12;
		geometry: BlCircleGeometry new;
		background: aHousehold color;
		yourself.
	chip addChild: dot.
	chip addChild: (BlTextElement new
		text: (aNumber printString asRopedText fontSize: 12; bold; yourself);
		yourself).
	^ chip