copy
stopCopy: evt
	
	self replaceCells.
	self cells do: [ :cell | 
		cell 
			text: self startCell text;
			calcRepresentation: self startCell calcRepresentation].
	self startSelection.