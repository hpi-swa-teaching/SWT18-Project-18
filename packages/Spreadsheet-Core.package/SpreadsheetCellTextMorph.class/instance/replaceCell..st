editing
replaceCell: aCell
	
	self
		calculateAndWriteContent.
	self
		text: aCell text;
		calcRepresentation: aCell calcRepresentation;
		cell: aCell;
		adjustToCell.
	self grid functionWindow text:  aCell calcRepresentation.
	self grid addMorph: self