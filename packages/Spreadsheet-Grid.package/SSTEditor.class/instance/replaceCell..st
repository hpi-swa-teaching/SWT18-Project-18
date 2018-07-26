editing
replaceCell: aCell
	
	self 
		bounds: aCell bounds;
		maxSize: (aCell width @ (aCell height));
		struckOut: aCell struckOut;
		underlined: aCell underlined;
		addApplicationStyles: aCell style