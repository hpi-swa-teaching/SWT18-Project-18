manage rows
addRowBefore
	
	| aRowIndex |
	
	self grid selection singleRowSelected 
		ifTrue: [aRowIndex := self grid selection startCell column index. . Transcript show: grid selection startCell gridPosition]
		ifFalse: [aRowIndex := self rows first index].
	self addRowWithIndex: (aRowIndex).