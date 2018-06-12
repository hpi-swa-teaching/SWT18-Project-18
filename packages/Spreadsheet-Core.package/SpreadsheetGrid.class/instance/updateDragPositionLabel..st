event handling
updateDragPositionLabel: aPoint
	
	(self gridSize containsPoint: aPoint) ifFalse: [^self].
	self selection updateDragPositionLabel: aPoint.