layout
addColumnBefore
	
	| aColumnIndex |
	
	self selection singleColumnSelected 
		ifTrue: [aColumnIndex := self selection cells asOrderedCollection first column index]
		ifFalse: [aColumnIndex := self columns first index].
	self addColumnWithIndex: aColumnIndex.