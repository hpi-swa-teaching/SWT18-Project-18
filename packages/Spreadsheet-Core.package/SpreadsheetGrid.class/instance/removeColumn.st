managing columns
removeColumn 
	
	self selection singleColumnSelected 
		ifTrue: [self data removeColumnWithIndex: self selection startCell column index]
		ifFalse: [self data removeColumn].