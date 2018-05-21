event handling
startDragAtCell: aCell 

	self selection
		removeAllCells;
		startCell: aCell;
		currentCell: aCell.
	self selection cells add: aCell
	