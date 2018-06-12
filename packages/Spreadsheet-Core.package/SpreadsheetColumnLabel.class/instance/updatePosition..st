as yet unclassified
updatePosition: aPoint

	self position: aPoint.
	self edgeGrip drag ifFalse: [self edgeGrip position: (self right - (edgeGrip width)) @ self position y].