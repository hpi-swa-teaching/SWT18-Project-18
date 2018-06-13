managing rows
addRowAfter
	
	| aRowIndex |
	
	self selection singleRowSelected 
		ifTrue: [aRowIndex := self selection startCell column index + 1]
		ifFalse: [aRowIndex := self rows 
			ifEmpty: [1]
			ifNotEmpty: [self rows last index + 1] ].
	self	addRowWithIndex: aRowIndex.