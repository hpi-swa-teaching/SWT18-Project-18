initialization
openInSpreadsheet
	
	self
		height: self label height;
		position: (self label right - (self width)) @ self label position y.
	self grid addMorphFront: self.