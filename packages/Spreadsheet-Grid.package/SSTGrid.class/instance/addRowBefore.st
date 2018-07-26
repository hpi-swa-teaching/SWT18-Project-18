managing rows
addRowBefore
	
	self selection singleRowSelected 
		ifTrue: [self data addRowWithIndex: self selection selectedCell rowIndex]
		ifFalse: [self data addRowWithIndex: 1].