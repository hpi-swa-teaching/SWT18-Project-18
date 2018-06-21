cell dragging
adjustSize
	
	self 
		position: (self topLeftCell position);
		width: (self bottomRightCell right - self topLeftCell left);
		height: (self bottomRightCell bottom - self topLeftCell top);
		"bounds: (Rectangle origin: self topLeftCell position extent: (self bottomRightCell bottomRight));"
		adjustActiveCell;
		changed.