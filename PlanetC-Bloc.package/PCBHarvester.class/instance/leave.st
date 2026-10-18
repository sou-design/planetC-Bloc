as yet unclassified
leave
	cell ifNil: [ ^ self ].
	cell removeHarvester: self.
	cell := nil