as yet unclassified
createFrom: startCell to: endCell
	
	self originCell: (self topLeftFor: startCell and: endCell).
	self cornerCell: (self bottomRightFor: startCell and: endCell).
	self addAll: (self data getCellsFrom: self originCell to: self cornerCell)