cell copy
stopCopy: evt
	
	self cells: (self grid getCellsFrom: self topLeftCell to: self bottomRightCell).
	self cells do: [ :cell | 
		cell 
			text: self selectedCell text;
			calcRepresentation: self startCell calcRepresentation].
	self startSelection.