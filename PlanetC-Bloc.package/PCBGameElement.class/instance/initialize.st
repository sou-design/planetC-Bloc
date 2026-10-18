initialization
initialize
	super initialize.
	self
		layout: BlLinearLayout vertical;
		background: (Color fromHexString: 'F3EFE6');
		padding: (BlInsets all: 24);
		constraintsDo: [ :c |
			c horizontal matchParent.
			c vertical matchParent ]