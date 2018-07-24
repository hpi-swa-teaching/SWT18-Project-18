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
		updateDependentMorphs.
	self newSelection: aCell.