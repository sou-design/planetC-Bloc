as yet unclassified
updateBirds
	birdsBox removeChildren.
	showBirds ifFalse: [ ^ self ].
	cell adultBirds timesRepeat: [
		birdsBox addChild: self birdImage ].
	cell newbornBirds timesRepeat: [
		birdsBox addChild: (self dot: Color yellow size: 10) ]