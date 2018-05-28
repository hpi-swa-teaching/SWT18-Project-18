event handling
updateDragPosition: aPoint
	
	(self gridBounds containsPoint: aPoint) ifFalse: [^self].
	self selection updateDragPosition: aPoint.
	Transcript show: self selection cells; cr.