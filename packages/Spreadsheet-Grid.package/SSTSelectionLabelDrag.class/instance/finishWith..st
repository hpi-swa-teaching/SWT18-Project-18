as yet unclassified
finishWith: anEvent

	self selection
		newSelection: self startCell to: self currentCell;
		addDependentMorphs;
		currentStrategie: nil.