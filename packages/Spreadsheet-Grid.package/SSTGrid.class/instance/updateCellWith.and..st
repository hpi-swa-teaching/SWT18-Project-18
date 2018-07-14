updating
updateCellWith: aRow and: aColumn
	
	(self data cellAtRowIndex: aRow index colIndex: aColumn index)
		width: aColumn width;
		height: aRow height;
		position: aColumn position x @ (aRow position y).