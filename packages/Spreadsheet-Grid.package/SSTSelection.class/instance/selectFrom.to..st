helper
selectFrom: aStartCell to: anEndCell

	self 
		cells: (aStartCell to: anEndCell);
		startSelection;
		adjustSize;
		updateDependentMorphs