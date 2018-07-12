accessing rows
addRow
	
	self	addRowWithIndex: (self rows
		ifEmpty: [1] 
		ifNotEmpty: [rows last index]).