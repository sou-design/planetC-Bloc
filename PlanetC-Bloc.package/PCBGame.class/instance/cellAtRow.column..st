accessing
cellAtRow: aRow column: aColumn
	^ cells at: aRow - 1 * self columns + aColumn