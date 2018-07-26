accessing cells
findColumnAndRowIndex: aPosition
	" Uses Binary search "
	| rowIndex colIndex positionTemp |
	
	"clamp to Grid"
	 positionTemp := ( aPosition x clampLow: self innerGridBounds left high: self innerGridBounds right) @ ( aPosition y clampLow: self innerGridBounds top high: self innerGridBounds bottom).
	
	colIndex := self binarySearchFor: self columns value: positionTemp x  lower: #left upper: #right.
	rowIndex := self binarySearchFor: self rows value: positionTemp y lower: #top upper: #bottom.
	
	^ (colIndex @ rowIndex)