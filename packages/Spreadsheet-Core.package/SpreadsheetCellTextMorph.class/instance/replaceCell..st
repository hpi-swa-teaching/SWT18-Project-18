editing
replaceCell: aCell
	
	self writeContent.
	self 
		position: aCell position;
		width: aCell width;
		height: aCell height;
		contentsWrapped: aCell contents;
		contents: aCell contents;
		calcRepresentation: aCell calcRepresentation;
		cell: aCell;
		yourself.
	self grid functionWindow contents:  aCell calcRepresentation.
	self grid addMorph: self