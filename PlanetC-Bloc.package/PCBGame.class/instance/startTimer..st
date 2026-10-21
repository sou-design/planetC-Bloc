as yet unclassified
startTimer: seconds
	secondsLeft := seconds.
	ticker ifNil: [
		ticker := [
			[ self isOver ] whileFalse: [
				(Delay forSeconds: 1) wait.
				secondsLeft > 0 ifTrue: [
					secondsLeft := secondsLeft - 1.
					self notifyChanged ] ] ] forkNamed: 'PlanetC timer' ]