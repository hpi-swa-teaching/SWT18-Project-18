initialization
setPosition

	self topSide: self position x.
	self bottomSide: self position x + self height.
	self leftSide: self position y.
	self rightSide: self position y + self width.
	
	self topSide == 0 ifFalse: [self wasInitialized: true.]

	