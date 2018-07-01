accessing cells
findColumnAndRowIndex: position
	" Uses Binary search "
	| rowIndex colIndex|
	
	colIndex := self binarySearchFor: self columns value: position x  lower: #left upper: #right.
	rowIndex := self binarySearchFor: self rows value: position y lower: #top upper: #bottom.
	
	^ (colIndex @ rowIndex).