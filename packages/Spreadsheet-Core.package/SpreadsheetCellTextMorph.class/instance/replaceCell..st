editing
replaceCell: aCell
	
	self
		writeContent;
		text: aCell text;
		calcRepresentation: aCell calcRepresentation;
		cell: aCell;
		adjustToCell.
	self grid functionWindow text:  aCell calcRepresentation.
	self grid addMorph: self