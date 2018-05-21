as yet unclassified
mouseDown: evt
	
	self grid editCell: self cells first event: evt.
	self grid selection fromCollection: self cells.