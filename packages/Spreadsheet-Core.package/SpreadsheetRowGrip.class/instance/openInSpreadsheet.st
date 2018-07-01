as yet unclassified
openInSpreadsheet

	self
		width: self label width;
		position: self label position x  @ (self label bottom  - (self height)).
	self grid addMorphFront: self.