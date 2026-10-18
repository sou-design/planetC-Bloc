path commands
moveTo: aCell
	cell == aCell ifTrue: [ ^ self ].
	self leave.
	cell := aCell.
	aCell addHarvester: self