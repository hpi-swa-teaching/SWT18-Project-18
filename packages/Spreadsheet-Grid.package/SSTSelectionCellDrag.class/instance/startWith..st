as yet unclassified
startWith: aCell 
	
	self selection fullMoveTo: aCell.
	self 
		startCell: aCell;
		currentCell: aCell.