managing columns
addColumnBefore
	
	| aColumnIndex |
	
	self selection singleColumnSelected 
		ifTrue: [aColumnIndex := self selection startCell column index]
		ifFalse: [aColumnIndex := self columns first index].
	self addColumnWithIndex: aColumnIndex.