cell copy
stopCopy: evt
	
	self replaceCells.
	self cells do: [ :cell | 
		cell 
			text: self selectedCell text;
			calcRepresentation: self startCell calcRepresentation].
	self startSelection.