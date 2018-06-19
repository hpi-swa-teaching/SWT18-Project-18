label
startDragAtLabel: aLabel

	self
		startLabel:  aLabel;
		startCell: aLabel cells first;
		currentLabel: aLabel;
		currentCell: aLabel cells last;
		startSelection;
		dragging: true.