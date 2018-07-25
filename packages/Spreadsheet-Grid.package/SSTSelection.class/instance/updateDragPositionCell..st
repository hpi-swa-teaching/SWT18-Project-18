cell dragging
updateDragPositionCell: aPoint

	(self grid innerGridBounds containsPoint: aPoint ) ifFalse: [ ^ self ].
	self findNewPositionX: aPoint.
 	self findNewPositionY: aPoint.
	(self startCell ~= self currentCell and: [self dragging not]) ifTrue: [ 
		self dragging: true.
		self removeDependentMorphs. 
		self startSelection. ]. "Necessary because #startDrag: also reacts to doubleClick"
	self adjustSize.