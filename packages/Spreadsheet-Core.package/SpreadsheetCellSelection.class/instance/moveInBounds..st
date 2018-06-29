selection moving
moveInBounds: aCell

	self removeEditor.
	self selectedCell: aCell.
	self activeCellMorph bounds: aCell bounds.
	self 
		updateDependentMorphs;
		comeToFront;
		externalOutput: aCell calcRepresentation.