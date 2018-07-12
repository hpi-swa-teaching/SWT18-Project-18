managing columns
addColumnBefore
	
	self selection singleColumnSelected 
		ifTrue: [self data addColumnWithIndex: self selection startCell column index]
		ifFalse: [self data addColumnWithIndex: 1].