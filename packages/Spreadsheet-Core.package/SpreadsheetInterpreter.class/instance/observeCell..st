binding
observeCell: aCell

	cell observedCells add: aCell.
	aCell dependentCells add: cell.