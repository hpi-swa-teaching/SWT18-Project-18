accessing rows
removeRow
	
	self	removeRowWithIndex: (self rows
		ifEmpty: [1] 
		ifNotEmpty: [rows last index]).