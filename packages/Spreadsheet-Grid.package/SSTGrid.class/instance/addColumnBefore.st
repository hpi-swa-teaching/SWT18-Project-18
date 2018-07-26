managing columns
addColumnBefore
	
	self selection singleColumnSelected 
		ifTrue: [self data addColumnWithIndex: self selection selectedCell columnIndex]
		ifFalse: [self data addColumnWithIndex: 1].