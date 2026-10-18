tests
testClickingAButtonSelectsTheFamily
	(element familyButtons at: 3) click.
	self assert: game activeHousehold equals: (game households at: 3)