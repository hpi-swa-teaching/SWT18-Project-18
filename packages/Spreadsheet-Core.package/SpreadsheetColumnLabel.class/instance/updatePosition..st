as yet unclassified
updatePosition: aPoint

	super position: aPoint.
	self edgeGrip drag ifFalse: [self edgeGrip position: (self right - (edgeGrip width)) @ self position y].