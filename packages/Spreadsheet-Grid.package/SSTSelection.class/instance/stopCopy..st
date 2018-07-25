cell copy
stopCopy: evt
	
	self cells: (self topLeftCell to: self bottomRightCell).
	self cells do: [ :cell | 
		cell calculateFunction: self selectedCell calcRepresentation].
	self startSelection