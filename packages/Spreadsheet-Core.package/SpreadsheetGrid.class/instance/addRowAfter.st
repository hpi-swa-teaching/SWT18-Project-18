managing rows
addRowAfter
	
	self selection singleRowSelected 
		ifTrue: [self data addRowWithIndex: self selection startCell column index + 1]
		ifFalse: [self data addRow].