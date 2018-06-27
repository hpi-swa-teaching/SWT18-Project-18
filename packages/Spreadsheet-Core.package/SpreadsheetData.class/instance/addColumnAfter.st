manage columns
addColumnAfter
	
	| aColumnIndex |
	
	self grid selection singleColumnSelected 
		ifTrue: [aColumnIndex := self grid selection startCell column index + 1]
		ifFalse: [aColumnIndex := self columns 
			ifEmpty: [1]
			ifNotEmpty: [self columns last index + 1] ].
	self	addColumnWithIndex: aColumnIndex.