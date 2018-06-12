managing rows
removeRow
	
	| aRowIndex |
	
	(self rows size <= 1) ifTrue: [^ self] .
	self selection singleRowSelected 
		ifTrue: [aRowIndex := self selection startCell index]
		ifFalse: [aRowIndex := self rows last index].
	self removeRowWithIndex: aRowIndex.