managing columns
addColumnAfter
	
	self selection singleColumnSelected 
		ifTrue: [self	data addColumnWithIndex: self selection startCell column index + 1]
		ifFalse: [self data addColumn].