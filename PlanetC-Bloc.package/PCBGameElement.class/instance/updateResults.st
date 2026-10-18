as yet unclassified
updateResults
	resultBox removeChildren.
	game isOver ifFalse: [ ^ self ].
	resultBox addChild: (BlTextElement new
		text: ('Final results' asRopedText fontSize: 24; bold; yourself)).
	(game households asSortedCollection: [ :a :b | a totalGain >= b totalGain ])
		do: [ :household |
			resultBox addChild: (BlTextElement new
				text: ((household name , ': ' , household totalGain printString) asRopedText
					fontSize: 20;
					yourself)) ].
	resultBox addChild: (BlTextElement new
		text: (('Newborn birds: ' , game totalNewborns printString) asRopedText
			fontSize: 20;
			bold;
			yourself))