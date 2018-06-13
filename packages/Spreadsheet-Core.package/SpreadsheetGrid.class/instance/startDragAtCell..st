event handling
startDragAtCell: aCell 

	self selection
		removeAllCells;
		startCell: aCell;
		currentCell: aCell;
		startLabel: nil.
	self selection cells add: aCell
	