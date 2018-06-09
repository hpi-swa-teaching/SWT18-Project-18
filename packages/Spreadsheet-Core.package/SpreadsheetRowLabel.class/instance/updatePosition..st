as yet unclassified
updatePosition: aPoint

	self position: aPoint.
	(self edgeGrip drag) ifFalse: [self edgeGrip position: self position x  @ (self bottom  - (edgeGrip height))].