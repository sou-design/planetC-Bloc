initialization
initialize
	super initialize.
	action := [ ].
	labelElement := BlTextElement new.
	labelElement preventMouseEvents.
	self
		layout: BlLinearLayout horizontal;
		padding: (BlInsets top: 9 left: 16 bottom: 9 right: 16);
		geometry: (BlRoundedRectangleGeometry cornerRadius: 7);
		background: (Color fromHexString: '2F6B4F');
		constraintsDo: [ :c | c horizontal fitContent. c vertical fitContent ].
	self addChild: labelElement.
	self addEventHandlerOn: BlPrimaryClickEvent do: [ :anEvent |
		anEvent consumed: true.
		self click ]