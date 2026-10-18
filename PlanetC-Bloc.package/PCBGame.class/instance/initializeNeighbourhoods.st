initialization
initializeNeighbourhoods
	cells do: [ :cell |
		cell neighbours: (cells select: [ :other |
			other ~~ cell
				and: [ (other row - cell row) abs <= 1
				and: [ (other column - cell column) abs <= 1 ] ] ]) ]