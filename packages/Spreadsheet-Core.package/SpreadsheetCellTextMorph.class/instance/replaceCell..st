editing
replaceCell: aCell
	
	self writeContent.
	self 
		position: aCell position;
		width: aCell width;
		height: aCell height;
		contentsWrapped: aCell contents;
		contents: aCell contents;
		cell: aCell.
	self grid addMorph: self