cell dragging
adjustCurrentCell 
	
	| xDiff yDiff |
	xDiff := (self currentCell column index - self startCell column index) abs.
	yDiff := (self currentCell row index - self startCell row index) abs.
	(xDiff > yDiff)
		ifTrue: [ self currentCell: (self grid cellAtRowIndex: self startCell row index colIndex: self currentCell column index)]
		ifFalse: [ self currentCell: (self grid cellAtRowIndex: self currentCell row index colIndex: self startCell column index)]