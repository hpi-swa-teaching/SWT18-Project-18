managing rows
addRowAfter
	
	self selection singleRowSelected 
		ifTrue: [self data addRowWithIndex: self selection selectedCell rowIndex + 1]
		ifFalse: [self data addRow].