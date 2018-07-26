helper
adjustSize
	
	self cells 
		ifEmpty: [ self adjustSize: (self selectedCell bounds)]
		ifNotEmpty: [self adjustSize: (self cells bounds)]