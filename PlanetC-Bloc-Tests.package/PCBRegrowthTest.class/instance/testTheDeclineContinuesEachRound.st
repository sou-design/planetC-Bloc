tests
testTheDeclineContinuesEachRound
	4 timesRepeat: [ cell regrowBiomass ].
	self assert: cell biomass equals: 0