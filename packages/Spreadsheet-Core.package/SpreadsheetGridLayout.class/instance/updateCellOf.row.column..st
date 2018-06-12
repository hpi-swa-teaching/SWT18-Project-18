as yet unclassified
updateCellOf: aMorph row: aRow column: aColumn
	
	(aMorph cellAtRowIndex: aRow index colIndex: aColumn index)
		width: aColumn width;
		height: aRow height;
		position: aColumn position x @ (aRow position y).