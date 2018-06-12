managing rows
addRowBefore
	
	| aRowIndex |
	
	self selection singleRowSelected 
		ifTrue: [aRowIndex := self selection startCell index]
		ifFalse: [aRowIndex := self rows first index].
	self addRowWithIndex: (aRowIndex).