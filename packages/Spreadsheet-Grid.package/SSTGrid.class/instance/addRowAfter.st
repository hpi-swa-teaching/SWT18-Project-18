managing rows
addRowAfter
	
	self selection singleRowSelected 
		ifTrue: [self data addRowWithIndex: self selection startCell rowIndex + 1]
		ifFalse: [self data addRow].