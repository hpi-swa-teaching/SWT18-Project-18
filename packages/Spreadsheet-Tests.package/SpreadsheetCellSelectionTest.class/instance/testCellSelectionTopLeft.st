as yet unclassified
testCellSelectionTopLeft

	self simulateMouseEvent: #mouseDown at: gridCell center buttons: #(left) start: 0@0 morph: grid.
	self simulateMouseEvent: #mouseMove at: ((grid cellAtRowIndex: 1 colIndex: 1) center) buttons: #(left) start: 0@0 morph: grid.
	self simulateMouseEvent: #mouseMove at: ((grid cellAtRowIndex: 2 colIndex: 2) center) buttons: #(left) start: 0@0 morph: grid.
	grid updateDragPosition: (grid cellAtRowIndex: 1 colIndex: 1) center.
	grid updateDragPosition: (grid cellAtRowIndex: 2 colIndex: 2) center.
	self simulateMouseEvent: #mouseUp at: ((grid cellAtRowIndex: 2 colIndex: 2) center) buttons: #(left) start: 0@0 morph: grid.
	self assert: (selection cells includesAllOf: (
		grid getCellsFrom: (grid cellAtRowIndex: 2 colIndex: 2) to: gridCell))
	
	