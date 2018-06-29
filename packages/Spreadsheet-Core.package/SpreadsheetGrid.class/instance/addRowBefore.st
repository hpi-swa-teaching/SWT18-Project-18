managing rows
addRowBefore
	
	self selection singleRowSelected 
		ifTrue: [self data addRowWithIndex: self selection startCell column index]
		ifFalse: [self data addRowWithIndex: 1].