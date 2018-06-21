drawing
drawOn: aCanvas

	aCanvas flush.
	self 
		drawCellsOn: aCanvas;
		drawLabelsOn: aCanvas;
		drawOutlineOn: aCanvas