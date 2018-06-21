label
moveInBounds: aCell

	self removeEditor.
	self selectedCell: aCell.
	self activeCell bounds: aCell bounds.
	self 
		updateDependentMorphs;
		comeToFront;
		externalOutput: aCell calcRepresentation.