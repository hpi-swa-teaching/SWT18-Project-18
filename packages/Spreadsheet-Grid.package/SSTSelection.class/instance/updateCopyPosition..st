cell copy
updateCopyPosition: aPoint

	(self grid innerGridBounds containsPoint: aPoint) ifFalse: [ ^ self ].
	self findNewPositionX: aPoint.
 	self findNewPositionY: aPoint.
	self adjustCurrentCell.
	self adjustSize.