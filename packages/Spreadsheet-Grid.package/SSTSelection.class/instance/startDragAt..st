initialization
startDragAt: anObject

	(anObject isKindOf: SSTLabel) 
		ifTrue: [ self startDragAtLabel: anObject ]
		ifFalse: [ self startDragAtCell: anObject ]