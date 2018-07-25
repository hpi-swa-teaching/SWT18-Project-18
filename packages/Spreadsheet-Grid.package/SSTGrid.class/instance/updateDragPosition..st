updating
updateDragPosition: aPoint
	
	(self bounds containsPoint: aPoint) ifFalse: [^self].
	self selection updatePosition: aPoint.