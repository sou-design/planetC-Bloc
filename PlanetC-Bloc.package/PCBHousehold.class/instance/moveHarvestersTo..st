initialization
moveHarvestersTo: cellsArray
	1 to: (cellsArray size min: harvesters size) do: [ :i |
		| aCell |
		aCell := cellsArray at: i.
		aCell
			ifNil: [ (harvesters at: i) leave ]
			ifNotNil: [ (harvesters at: i) moveTo: aCell ] ]