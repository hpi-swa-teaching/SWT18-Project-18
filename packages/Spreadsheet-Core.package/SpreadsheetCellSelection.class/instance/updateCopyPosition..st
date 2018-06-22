cell copy
updateCopyPosition: aPoint

	self findNewPositionX: aPoint.
 	self findNewPositionY: aPoint.
	self adjustCurrentCell.
	self adjustSize.