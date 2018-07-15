perform calculations
textChanged: aCell

	self notifyDependents: aCell.
	self layoutChanged.