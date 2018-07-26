as yet unclassified
startWith: aLabel

	self
		startLabel:  aLabel;
		startCell: aLabel cells first;
		currentLabel: aLabel;
		currentCell: aLabel cells last.
	self selection
		selectedCell: self startCell;
		startSelection;
		adjustSize: self selectionBounds;
		removeDependentMorphs