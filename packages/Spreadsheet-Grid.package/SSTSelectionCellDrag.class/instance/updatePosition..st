as yet unclassified
updatePosition: aPosition

	(self selection grid innerGridBounds containsPoint: aPosition ) ifFalse: [ ^ self ].
	self findNewPositionX: aPosition.
 	self findNewPositionY: aPosition.
	(self startCell ~= self currentCell and: [self dragging not]) ifTrue: [ 
		self dragging: true.
		self selection removeDependentMorphs. 
		self selection startSelection. ]. "Necessary because #startDrag: also reacts to doubleClick"
	Transcript show: self selectionBounds.
	self selection adjustSize: self selectionBounds.