event handling
updateDragPosition: aPoint
	
	(self gridBounds containsPoint: aPoint) ifFalse: [^self].
	self selection updateDragPosition: aPoint.