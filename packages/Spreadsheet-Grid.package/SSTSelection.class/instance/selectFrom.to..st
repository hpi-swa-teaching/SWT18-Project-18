helper
selectFrom: startCell to: endCell

	self 
		startCell: startCell;
		currentCell: endCell;
		startLabel: nil;
		currentLabel: nil;
		cells: (startCell to: endCell);
		startSelection;
		adjustSize;
		updateDependentMorphs