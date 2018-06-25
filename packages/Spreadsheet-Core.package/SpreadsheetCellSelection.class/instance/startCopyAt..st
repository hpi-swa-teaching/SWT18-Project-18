cell copy
startCopyAt: aCell

	self copying: true.
	self startDragAtCell: aCell.
	self comeToFront.