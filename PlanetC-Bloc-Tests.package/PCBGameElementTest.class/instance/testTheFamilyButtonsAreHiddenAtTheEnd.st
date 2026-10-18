tests
testTheFamilyButtonsAreHiddenAtTheEnd
	game finish.
	element familyButtons do: [ :each |
		self assert: each visibility equals: BlVisibility gone ]