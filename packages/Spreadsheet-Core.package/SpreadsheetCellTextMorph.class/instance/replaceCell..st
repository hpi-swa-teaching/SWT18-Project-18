editing
replaceCell: aCell
	
	self writeContent.
	self 
		position: aCell position;
		width: aCell width;
		height: aCell height;
		text: aCell contents;
		calcRepresentation: aCell calcRepresentation;
		cell: aCell;
		yourself.
	self grid functionWindow text:  aCell calcRepresentation.
	self grid addMorph: self