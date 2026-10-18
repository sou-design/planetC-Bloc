accessing
applyActions
	households do: [ :each | each resetHarvest ].
	cells do: [ :cell | cell collectHarvest ].
	cells do: [ :cell | cell updateNonHarvestTime ].
	cells do: [ :cell | cell updateNewbornBirds ].
	totalNewborns := totalNewborns
		+ (cells inject: 0 into: [ :sum :each | sum + each nbNewBorns ]).
	currentRound := currentRound + 1