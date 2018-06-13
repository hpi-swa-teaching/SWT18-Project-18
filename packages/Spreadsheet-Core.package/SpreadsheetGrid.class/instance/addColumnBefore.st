managing columns
addColumnBefore
	
	| aColumnIndex |
	
	self selection singleColumnSelected 
		ifTrue: [aColumnIndex := self selection startLabel column index]
		ifFalse: [aColumnIndex := self columns first index].
	self addColumnWithIndex: aColumnIndex.