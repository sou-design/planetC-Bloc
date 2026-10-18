accessing
applyActions
	households do: [ :each | each resetHarvest ].
	cells do: [ :cell | cell collectHarvest ].
	cells do: [ :cell | cell updateNonHarvestTime ].
	cells do: [ :cell | cell updateNewbornBirds ].
	currentRound := currentRound + 1