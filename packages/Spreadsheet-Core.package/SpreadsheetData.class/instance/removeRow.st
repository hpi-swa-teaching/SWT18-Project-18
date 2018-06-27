manage rows
removeRow
	
	| aRowIndex |
	
	(self rows size <= 1) ifTrue: [^ self] .
	self grid selection singleRowSelected 
		ifTrue: [aRowIndex := self grid selection startCell column index]
		ifFalse: [aRowIndex := self rows last index].
	self removeRowWithIndex: aRowIndex.