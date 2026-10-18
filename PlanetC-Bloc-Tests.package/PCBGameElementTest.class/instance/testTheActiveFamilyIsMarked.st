tests
testTheActiveFamilyIsMarked
	(element familyButtons at: 2) click.
	self assert: (element familyButtons at: 2) label equals: '> Family 2'.
	self assert: (element familyButtons at: 1) label equals: 'Family 1'