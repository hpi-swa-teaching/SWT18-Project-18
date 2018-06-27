manage columns
addColumnBefore
	
	| aColumnIndex |
	
	self grid selection singleColumnSelected 
		ifTrue: [aColumnIndex := self grid selection startCell column index]
		ifFalse: [aColumnIndex := self columns first index].
	self addColumnWithIndex: aColumnIndex.