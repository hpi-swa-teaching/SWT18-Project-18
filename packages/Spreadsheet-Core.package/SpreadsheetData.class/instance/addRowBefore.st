manage rows
addRowBefore
	
	| aRowIndex |
	
	self grid selection singleRowSelected 
		ifTrue: [aRowIndex := self grid selection startCell column index]
		ifFalse: [aRowIndex := self rows first index].
	self addRowWithIndex: (aRowIndex).