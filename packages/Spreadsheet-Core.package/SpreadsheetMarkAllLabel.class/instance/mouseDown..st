as yet unclassified
mouseDown: anEvent

	self grid editCell: self grid rows first cells first event: anEvent.
	self grid selectAll.