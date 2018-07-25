managing columns
addColumnAfter
	
	self selection singleColumnSelected 
		ifTrue: [self	data addColumnWithIndex: self selection selectedCell columnIndex + 1]
		ifFalse: [self data addColumn].