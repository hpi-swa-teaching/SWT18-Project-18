drawing
drawOn: aCanvas

	aCanvas flush.
	self
		updatePositions
		drawCellsOn: aCanvas;
		drawLabelsOn: aCanvas;
		drawOutlineOn: aCanvas