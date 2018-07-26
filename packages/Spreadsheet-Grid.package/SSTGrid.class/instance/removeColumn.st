managing columns
removeColumn 
	
	self selection singleColumnSelected 
		ifTrue: [self data removeColumnWithIndex: self selection selectedCell columnIndex]
		ifFalse: [self data removeColumn].