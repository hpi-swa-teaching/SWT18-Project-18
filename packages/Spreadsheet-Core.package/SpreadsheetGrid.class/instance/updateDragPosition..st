event handling
updateDragPosition: aPoint
	
	(self bounds containsPoint: aPoint) ifFalse: [^self].
	self selection updateDragPosition: aPoint.