event handling
startDragAtLabel: aLabel

	self selection
		startLabel:  aLabel;
		startCell: aLabel cells first;
		currentLabel: aLabel;
		fromCollection: aLabel cells.