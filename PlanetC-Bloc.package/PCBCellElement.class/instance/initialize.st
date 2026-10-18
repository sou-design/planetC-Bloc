initialization
initialize
	super initialize.
	showBirds := false.
	self
		layout: (BlLinearLayout vertical cellSpacing: 1; yourself);
		extent: 112 @ 112;
		padding: (BlInsets all: 6);
		geometry: (BlRoundedRectangleGeometry cornerRadius: 1).

	cellId := BlTextElement new.

	chipsBox := BlElement new
		layout: (BlLinearLayout horizontal cellSpacing: 4; yourself);
		constraintsDo: [ :c |
			c horizontal fitContent.
			c vertical fitContent ];
		yourself.
		
	birdsBox := BlElement new
		layout: (BlLinearLayout horizontal cellSpacing: 4; yourself);
		constraintsDo: [ :c |
			c horizontal fitContent.
			c vertical fitContent ];
		yourself.

	cellId preventMeAndChildrenMouseEvents.
	chipsBox preventMeAndChildrenMouseEvents.
	birdsBox preventMeAndChildrenMouseEvents.
	self addChild: cellId.
	self addChild: chipsBox.
	self addChild: birdsBox