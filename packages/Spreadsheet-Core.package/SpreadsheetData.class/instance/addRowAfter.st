manage rows
addRowAfter
	
	| aRowIndex |
	
	self grid selection singleRowSelected 
		ifTrue: [aRowIndex := self grid selection startCell column index + 1. Transcript show: (grid selection startCell) gridPosition]
		ifFalse: [aRowIndex := self rows 
			ifEmpty: [1]
			ifNotEmpty: [self rows last index + 1] ].
	self	addRowWithIndex: aRowIndex.