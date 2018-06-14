editing
replaceCell: aCell
	
	self
		calculateAndWriteContent.
	self
		text: aCell text;
		cell: aCell;
		adjustToCell.
	self active: true.
	self grid functionWindow text:  aCell calcRepresentation.
	self grid addMorph: self