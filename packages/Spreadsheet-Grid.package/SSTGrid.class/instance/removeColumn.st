managing columns
removeColumn 
	
	self selection singleColumnSelected 
		ifTrue: [self data removeColumnWithIndex: self selection startCell columnIndex]
		ifFalse: [self data removeColumn].