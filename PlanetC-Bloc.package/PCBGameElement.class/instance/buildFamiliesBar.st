as yet unclassified
buildFamiliesBar
	| bar |
	bar := BlElement new
		layout: (BlLinearLayout horizontal cellSpacing: 8; yourself);
		constraintsDo: [ :c |
			c horizontal fitContent.
			c vertical fitContent ];
		yourself.
	familyButtons := game households collect: [ :household |
		(PCBButtonElement
			label: household name
			action: [ game selectHousehold: household ])
				background: household color;
				yourself ].
	bar addChildren: familyButtons.
	^ bar