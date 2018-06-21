label
fullMoveTo: aCell

	self
		clear;
		bounds: aCell bounds;
		startCell: aCell;
		currentCell: aCell;
		currentLabel: nil;
		startLabel: nil;
		adjustActiveCell;
		externalOutput: aCell calcRepresentation.