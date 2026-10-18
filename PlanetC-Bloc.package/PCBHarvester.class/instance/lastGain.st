as yet unclassified
lastGain
	^ gains ifEmpty: [ 0 ] ifNotEmpty: [ :all | all last ]