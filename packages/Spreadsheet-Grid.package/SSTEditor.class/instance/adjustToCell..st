initialization
adjustToCell: aCell
	
	self 
		bounds: aCell bounds;
		maxSize: aCell width @ (aCell height).
	self addApplicationStyles: aCell style.