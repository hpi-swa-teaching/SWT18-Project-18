as yet unclassified
mouseDown: evt
	
	super mouseDown: evt.
	self grid editCell: self cells first event: evt.
	self grid selection fromCollection: self cells.