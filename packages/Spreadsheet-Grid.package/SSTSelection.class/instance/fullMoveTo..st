selection moving
fullMoveTo: aCell

	self
		clear;
		selectedCell: aCell;
		bounds: aCell bounds;
		adjustActiveCellMorph;
		updateDependentMorphs.
	self newSelection: aCell.