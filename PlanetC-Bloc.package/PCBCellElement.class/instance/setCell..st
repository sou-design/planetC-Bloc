initialization
setCell: aCell
	cell := aCell.
	cell announcer when: PCBCellChanged send: #onCellChanged: to: self.
	self update