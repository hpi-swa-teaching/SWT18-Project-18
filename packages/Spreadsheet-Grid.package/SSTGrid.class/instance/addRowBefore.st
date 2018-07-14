managing rows
addRowBefore
	
	self selection singleRowSelected 
		ifTrue: [self data addRowWithIndex: self selection startCell rowIndex]
		ifFalse: [self data addRowWithIndex: 1].