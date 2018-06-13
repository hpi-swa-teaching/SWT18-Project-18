managing columns
addColumnAfter
	
	| aColumnIndex |
	
	self selection singleColumnSelected 
		ifTrue: [aColumnIndex := self selection startCell column index + 1]
		ifFalse: [aColumnIndex := self columns 
			ifEmpty: [1]
			ifNotEmpty: [self columns last index + 1] ].
	self	addColumnWithIndex: aColumnIndex.
	self changed.