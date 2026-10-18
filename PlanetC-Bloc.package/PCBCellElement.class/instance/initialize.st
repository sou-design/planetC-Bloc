initialization
initialize
	super initialize.
	self
		layout: BlFrameLayout new;
		extent: 112 @ 112;
		geometry: (BlRoundedRectangleGeometry cornerRadius: 6);
		padding: (BlInsets all: 6).
	idLabel := BlTextElement new.
	idLabel constraintsDo: [ :c |
		c frame horizontal alignLeft.
		c frame vertical alignTop ].
	chipsBox := BlElement new
		layout: BlFlowLayout horizontal;
		constraintsDo: [ :c |
			c horizontal matchParent.
			c vertical fitContent.
			c frame vertical alignBottom ];
		yourself.
	idLabel preventMeAndChildrenMouseEvents.
	chipsBox preventMeAndChildrenMouseEvents.
		showBirds := false.
	birdsBox := BlElement new
		layout: (BlLinearLayout horizontal cellSpacing: 3; yourself);
		constraintsDo: [ :c |
			c horizontal fitContent.
			c vertical fitContent.
			c frame horizontal alignRight.
			c frame vertical alignTop ];
		yourself.
	birdsBox preventMeAndChildrenMouseEvents.
	self addChildren: { idLabel. chipsBox. birdsBox }