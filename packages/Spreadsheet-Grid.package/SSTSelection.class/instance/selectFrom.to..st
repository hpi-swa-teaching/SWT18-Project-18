helper
selectFrom: aStartCell to: anEndCell

	self 
		startCell: aStartCell;
		currentCell: anEndCell;
		startLabel: nil;
		currentLabel: nil;
		cells: (aStartCell to: anEndCell);
		startSelection;
		adjustSize;
		updateDependentMorphs