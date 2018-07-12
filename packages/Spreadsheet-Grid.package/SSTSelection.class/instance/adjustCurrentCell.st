cell dragging
adjustCurrentCell 
	
	| xDiff yDiff |
	xDiff := (self currentCell columnIndex - self startCell columnIndex) abs.
	yDiff := (self currentCell rowIndex - self startCell rowIndex) abs.
	(xDiff > yDiff)
		ifTrue: [ self currentCell: (self grid cellAtRowIndex: self startCell rowIndex colIndex: self currentCell columnIndex)]
		ifFalse: [ self currentCell: (self grid cellAtRowIndex: self currentCell rowIndex colIndex: self startCell columnIndex)]