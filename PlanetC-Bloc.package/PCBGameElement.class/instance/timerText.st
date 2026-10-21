as yet unclassified
timerText
	| s |
	(game isRangerTurn or: [ game isHouseholdsTurn ]) ifFalse: [ ^ '' ].
	s := game secondsLeft.
	s = 0 ifTrue: [ ^ 'Time is up' ].
	^ (s // 60) printString , ':' , ((s \\ 60) printString padLeftTo: 2 with: $0)