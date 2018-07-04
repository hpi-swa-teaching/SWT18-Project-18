editing
replaceCell: aCell
	
	self
		text: aCell text;
		adjustToCell: aCell.
	self grid functionWindow text:  aCell calcRepresentation.