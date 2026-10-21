as yet unclassified
buildTopBar
	| bar titles spacer |
	bar := BlElement new
		layout: (BlLinearLayout horizontal cellSpacing: 10; yourself);
		constraintsDo: [ :c | c horizontal matchParent. c vertical fitContent ];
		yourself.
	titles := BlElement new
		layout: (BlLinearLayout vertical cellSpacing: 12; yourself);
		constraintsDo: [ :c | c horizontal fitContent. c vertical fitContent ];
		yourself.
	titles addChild: (BlTextElement new
		text: ('PlanetC Game' asRopedText fontSize: 28; bold;
			foreground: (Color fromHexString: '2F6B4F'); yourself);
		yourself).
	roundLabel := BlTextElement new.
	titles addChild: roundLabel.
	spacer := BlElement new
		constraintsDo: [ :c | c horizontal matchParent. c vertical exact: 1. c linear weight: 1 ];
		yourself.
	birdsButton := PCBButtonElement label: '' action: [ game toggleBirds ].
	birdsButton constraintsDo: [ :c | c linear vertical alignCenter ].
	actionButton := PCBButtonElement label: '' action: [ game proceed ].
	actionButton constraintsDo: [ :c | c linear vertical alignCenter ].
	timerLabel := BlTextElement new.
	timerLabel constraintsDo: [ :c | c linear vertical alignCenter ].
	bar addChildren: { titles. spacer. timerLabel. birdsButton. actionButton }.
	^ bar