editing
replaceCell: aCell
	
	self
		text: aCell text;
		adjustToCell: aCell.
	self selection externalOutput: aCell calcRepresentation.