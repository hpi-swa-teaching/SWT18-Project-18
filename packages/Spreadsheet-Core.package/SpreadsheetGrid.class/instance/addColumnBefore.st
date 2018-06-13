managing columns
addColumnBefore
	
	| aColumnIndex |
	
	self selection singleColumnSelected 
		ifTrue: [aColumnIndex := self selection startLabel index]
		ifFalse: [aColumnIndex := self columns first index].
	self addColumnWithIndex: aColumnIndex.