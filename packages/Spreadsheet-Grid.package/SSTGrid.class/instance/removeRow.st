managing rows
removeRow
	
	self selection singleRowSelected 
		ifTrue: [self data removeRowWithIndex: self selection startCell columnIndex]
		ifFalse: [self data removeRow].