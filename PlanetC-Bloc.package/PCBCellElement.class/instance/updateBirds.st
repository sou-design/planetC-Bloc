as yet unclassified
updateBirds
	birdsBox removeChildren.
	showBirds ifFalse: [ ^ self ].
	cell adultBirds > 0 ifTrue: [
		birdsBox addChild: (self dot: (Color fromHexString: '5B4636') size: 16) ].
	cell newbornBirds > 0 ifTrue: [
		birdsBox addChild: (self dot: (Color fromHexString: 'E8B923') size: 11).
		birdsBox addChild: (BlTextElement new
			text: (cell newbornBirds printString asRopedText fontSize: 12; bold; yourself);
			yourself) ]