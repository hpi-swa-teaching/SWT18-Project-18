layout
removeRow
	
	| aRowIndex |
	
	(self rows size <= 1) ifTrue: [^ self] .
	self selection singleRowSelected 
		ifTrue: [aRowIndex := self selection cells asOrderedCollection first row index]
		ifFalse: [aRowIndex := self rows last index].
	self removeRowWithIndex: aRowIndex.