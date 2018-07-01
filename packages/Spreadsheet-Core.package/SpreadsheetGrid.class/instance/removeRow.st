managing rows
removeRow
	
	self selection singleRowSelected 
		ifTrue: [self data removeRowWithIndex: self selection startCell column index]
		ifFalse: [self data removeRow].