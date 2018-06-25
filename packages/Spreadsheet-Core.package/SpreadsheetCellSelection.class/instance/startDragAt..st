initialization
startDragAt: anObject

	(anObject isKindOf: SpreadsheetLabel) 
		ifTrue: [ self startDragAtLabel: anObject ]
		ifFalse: [ self startDragAtCell: anObject ]