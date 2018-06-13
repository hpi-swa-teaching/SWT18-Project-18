event handling
startDragAtCell: aCell 

	self selection
		removeAllCells;
		startCell: aCell;
		currentCell: aCell;
		currentLabel: nil;
		startLabel: nil.
	self selection cells add: aCell
	