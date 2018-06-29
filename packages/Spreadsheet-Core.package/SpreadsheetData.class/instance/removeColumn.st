accessing columns
removeColumn 
	
	self removeColumnWithIndex: (self columns 
		ifEmpty: [1] 
		ifNotEmpty: [columns last index]).