accessing
strategies
	^ strategies ifNil: [ strategies := Dictionary new
		at: #copy put: (SSTSelectionCopy on: self);
		at: #move put: (SSTSelectionMove on: self);
		at: #cellDrag put: (SSTSelectionCellDrag on: self);
		at: #labelDrag put: (SSTSelectionLabelDrag on: self);
		yourself ]