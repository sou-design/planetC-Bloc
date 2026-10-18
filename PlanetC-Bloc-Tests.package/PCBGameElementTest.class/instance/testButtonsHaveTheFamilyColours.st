tests
testButtonsHaveTheFamilyColours
	element familyButtons with: game households do: [ :button :household |
		self assert: button background paint color equals: household color ]