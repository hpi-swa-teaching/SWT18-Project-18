as yet unclassified
adjustCurrentCell 
	
	| xDiff yDiff |
	xDiff := (self currentCell columnIndex - self startCell columnIndex) abs.
	yDiff := (self currentCell rowIndex - self startCell rowIndex) abs.
	(xDiff > yDiff)
		ifTrue: [ self currentCell: (self selection grid cellAtIndex: self currentCell columnIndex @ self startCell rowIndex)]
		ifFalse: [ self currentCell: (self selection grid cellAtIndex: self startCell columnIndex @ self currentCell rowIndex )]