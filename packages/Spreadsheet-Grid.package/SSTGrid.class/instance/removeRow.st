managing rows
removeRow
	
	self selection singleRowSelected 
		ifTrue: [self data removeRowWithIndex: self selection startCell rowIndex]
		ifFalse: [self data removeRow].