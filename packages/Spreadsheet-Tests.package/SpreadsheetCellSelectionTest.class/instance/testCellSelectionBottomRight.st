as yet unclassified
testCellSelectionBottomRight

	self simulateMouseEvent: #mouseDown at: gridCell center buttons: #(left) start: 0@0 morph: grid.
	self simulateMouseEvent: #mouseMove at: ((grid cellAtRowIndex: 3 colIndex: 3) center) buttons: #(left) start: 0@0 morph: grid.
	grid updateDragPosition: (grid cellAtRowIndex: 4 colIndex: 4) center.
	grid updateDragPosition: (grid cellAtRowIndex: 3 colIndex: 3) center.
	self simulateMouseEvent: #mouseUp at: ((grid cellAtRowIndex: 3 colIndex: 3) center) buttons: #(left) start: 0@0 morph: grid.
	self assert: (selection cells includesAllOf: (
		grid getCellsFrom: gridCell to: (grid cellAtRowIndex: 3 colIndex: 3)))
	
	