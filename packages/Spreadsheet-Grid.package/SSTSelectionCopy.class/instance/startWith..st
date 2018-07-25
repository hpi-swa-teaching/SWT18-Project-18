as yet unclassified
startWith: anObject

	self startCell: self selection cells originCell.
	self currentCell: self selection cells cornerCell.
	self selection comeToFront.