binding
observeCell: aCell

	aCell interpreterStack push: self.
	self allocatedCells add: aCell