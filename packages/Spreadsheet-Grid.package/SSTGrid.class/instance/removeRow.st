managing rows
removeRow
	
	self selection singleRowSelected 
		ifTrue: [self data removeRowWithIndex: self selection selectedCell rowIndex]
		ifFalse: [self data removeRow].