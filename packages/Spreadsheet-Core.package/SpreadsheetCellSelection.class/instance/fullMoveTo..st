selection moving
fullMoveTo: aCell

	self
		clear;
		bounds: aCell bounds;
		startCell: aCell;
		currentCell: aCell;
		currentLabel: nil;
		startLabel: nil;
		adjustActiveCellMorph;
		externalOutput: aCell calcRepresentation.