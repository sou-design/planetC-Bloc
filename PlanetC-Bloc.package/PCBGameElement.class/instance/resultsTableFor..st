accessing
resultsTableFor: roundIndexes
	| showTotal columns table cell line |
	showTotal := game isOver.
	columns := roundIndexes size + (showTotal ifTrue: [ 2 ] ifFalse: [ 1 ]).
	table := BlElement new
		layout: (BlGridLayout horizontal columnCount: columns; yourself);
		background: Color transparent;
		border: (BlBorder paint: (Color fromHexString: 'D8D0BF') width: 1);
		geometry: (BlRoundedRectangleGeometry cornerRadius: 8);
		padding: (BlInsets all: 8);
		margin: (BlInsets top: 8 bottom: 8);
		constraintsDo: [ :c | c horizontal fitContent. c vertical fitContent ];
		yourself.
	cell := [ :aString :aKind |
		| rope |
		rope := aString asRopedText.
		aKind = #header ifTrue: [ rope fontSize: 13; bold; foreground: Color gray ].
		aKind = #family ifTrue: [ rope fontSize: 16; bold ].
		aKind = #member ifTrue: [ rope fontSize: 14 ].
		table addChild: (BlTextElement new
			text: rope;
			padding: (BlInsets top: 6 left: 12 bottom: 6 right: 12);
			constraintsDo: [ :c | c horizontal exact: 110 ];
			yourself) ].
	line := [
		columns timesRepeat: [
			table addChild: (BlElement new
				background: (Color fromHexString: 'D8D0BF');
				margin: (BlInsets top: 4 bottom: 4);
				constraintsDo: [ :c |
					c horizontal exact: 110.
					c vertical exact: 1 ];
				yourself) ] ].
	cell value: 'FAMILY' value: #header.
	roundIndexes do: [ :i | cell value: 'ROUND ' , i printString value: #header ].
	showTotal ifTrue: [ cell value: 'TOTAL' value: #header ].
	game households do: [ :each |
		line value.
		cell value: each name value: #family.
		roundIndexes do: [ :i | cell value: (each gains at: i) printString value: #family ].
		showTotal ifTrue: [ cell value: each totalGain printString value: #family ].
		each harvesters do: [ :harvester |
			cell value: '   ' , harvester name value: #member.
			roundIndexes do: [ :i | cell value: (harvester gains at: i) printString value: #member ].
			showTotal ifTrue: [ cell value: harvester totalGain printString value: #member ] ] ].
	^ table