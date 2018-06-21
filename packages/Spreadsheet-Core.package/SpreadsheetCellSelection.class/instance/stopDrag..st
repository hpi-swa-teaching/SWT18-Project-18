cell dragging
stopDrag: evt
	
	self dragging ifTrue: [
		self cells: (self grid getCellsFrom: self topLeftCell to: self bottomRightCell).
		self updateDependentMorphs.].
	self dragging: false.
	Transcript show: 'Actual cells'; show: self cells.