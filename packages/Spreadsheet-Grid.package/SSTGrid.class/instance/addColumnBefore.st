managing columns
addColumnBefore
	
	self selection singleColumnSelected 
		ifTrue: [self data addColumnWithIndex: self selection startCell columnIndex]
		ifFalse: [self data addColumnWithIndex: 1].