as yet unclassified
updatePosition: aPoint

	super position: aPoint.
	(self edgeGrip drag) ifFalse: [self edgeGrip position: self position x  @ (self bottom  - (edgeGrip height))].