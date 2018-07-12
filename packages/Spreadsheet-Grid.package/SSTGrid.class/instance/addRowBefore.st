managing rows
addRowBefore
	
	self selection singleRowSelected 
		ifTrue: [self data addRowWithIndex: self selection startCell columnIndex]
		ifFalse: [self data addRowWithIndex: 1].