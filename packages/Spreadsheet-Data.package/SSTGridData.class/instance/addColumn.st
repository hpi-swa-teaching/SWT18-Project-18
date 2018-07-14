accessing columns
addColumn
	
	self addColumnWithIndex: (self columns 
		ifEmpty: [1] 
		ifNotEmpty: [columns last index + 1]).