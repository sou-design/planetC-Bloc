tests
testTheActiveFamilyHasABorder
	(element familyButtons at: 2) click.
	self assert: (element familyButtons at: 2) border width equals: 3.
	self assert: (element familyButtons at: 1) border width equals: 0