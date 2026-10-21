accessing
updateResults
	| lastRound |
	resultBox removeChildren.
	(game isOver or: [ game isReady and: [ game isFirstRound not ] ]) ifFalse: [ ^ self ].
	lastRound := game households first gains size.
	resultBox addChild: (BlTextElement new
		text: ((game isOver
			ifTrue: [ 'Final results' ]
			ifFalse: [ 'Results of round ' , lastRound printString ])
				asRopedText fontSize: 24; bold; yourself)).
	resultBox addChild: (self resultsTableFor: (game isOver
		ifTrue: [ 1 to: lastRound ]
		ifFalse: [ { lastRound } ])).
	resultBox addChild: (BlTextElement new
		text: (('Newborn birds: ' , game totalNewborns printString) asRopedText
			fontSize: 20;
			bold;
			yourself))