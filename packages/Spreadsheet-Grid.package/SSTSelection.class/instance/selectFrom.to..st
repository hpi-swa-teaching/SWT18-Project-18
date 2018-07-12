helper
selectFrom: startCell to: endCell

	self 
		startCell: startCell;
		currentCell: endCell;
		startLabel: nil;
		currentLabel: nil;
		cells: (self grid getCellsFrom: startCell to: endCell);
		startSelection;
		adjustSize