external
writeFunction: aFunction in: aCell event: evt

	aCell calcRepresentation: aFunction.
	self 
		removeEditor;
		selectedCell: aCell;
		adjustActiveCellMorph;
		cells: nil;
		editText: evt