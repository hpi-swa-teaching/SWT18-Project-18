as yet unclassified
updateCellOf: aMorph row: row column: column
	
	(aMorph cellAtRowIndex: row index colIndex: column index)
		width: column width;
		height: row height;
		position: column position x @ (row position y).