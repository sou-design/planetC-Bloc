initialization
regrowBiomass
	self hasHarvesters ifTrue: [ ^ self ].
	nonHarvestTime = 0
		ifTrue: [
			self biomass: (biomass + 1 min: 3).
			nonHarvestTime := nonHarvestTime + 1 ]
		ifFalse: [
			nonHarvestTime = 1
				ifTrue: [ nonHarvestTime := nonHarvestTime + 1 ]
				ifFalse: [ self biomass: (biomass - 1 max: 0) ] ]