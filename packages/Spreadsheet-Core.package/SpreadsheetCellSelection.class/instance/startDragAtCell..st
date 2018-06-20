cell
startDragAtCell: aCell 
	self
		position: aCell position;
		width: aCell width;
		height: aCell height;
		removeAllCells;
		startCell: aCell;
		currentCell: aCell;
		currentLabel: nil;
		startLabel: nil.