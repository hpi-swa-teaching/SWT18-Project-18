event handling
startDragAt: anObject

	(anObject isKindOf: SSTLabel)
		ifTrue: [ self selection startWith: anObject strategy: #labelDrag]
		ifFalse: [ self selection startWith: anObject strategy: #cellDrag].
	self dragging: true.