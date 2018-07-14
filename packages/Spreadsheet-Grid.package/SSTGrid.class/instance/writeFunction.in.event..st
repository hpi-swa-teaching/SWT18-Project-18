grid access
writeFunction: aFunction in: aCell event: evt

	aCell calcRepresentation: aFunction.
	self selection 
		removeEditor;
		selectedCell: aCell;
		adjustActiveCellMorph;
		cells: nil;
		editText: evt