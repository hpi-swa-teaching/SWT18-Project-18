cell copy
updateCopyPosition: aPoint

	(self grid innerGridBounds containsPoint: aPoint) ifFalse: [ ^ self ].
	self 
		findNewPositionX: aPoint;
 		findNewPositionY: aPoint;
		adjustCurrentCell;
		adjustSize;
		updateDependentMorphs