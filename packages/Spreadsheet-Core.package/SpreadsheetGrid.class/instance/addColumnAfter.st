layout
addColumnAfter
	
	| aColumnIndex |
	
	self selection singleColumnSelected 
		ifTrue: [aColumnIndex := self selection cells asOrderedCollection first column index + 1]
		ifFalse: [aColumnIndex := self columns 
			ifEmpty: [1]
			ifNotEmpty: [self columns last index + 1] ].
	self	addColumnWithIndex: aColumnIndex.