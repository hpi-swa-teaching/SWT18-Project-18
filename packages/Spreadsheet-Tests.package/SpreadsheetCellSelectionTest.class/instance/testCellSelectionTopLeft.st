as yet unclassified
testCellSelectionTopLeft

	self mousePress: gridCell buttons: #(left).
	self simulateMouseEvent: #mouseMove at: ((grid cellAtRowIndex: 1 colIndex: 1) center) buttons: #(left) start: 0@0 morph: gridCell.
	self simulateMouseEvent: #mouseMove at: ((grid cellAtRowIndex: 2 colIndex: 2) center) buttons: #(left) start: 0@0 morph: gridCell.
	grid updateDragPosition: (grid cellAtRowIndex: 1 colIndex: 1) center.
	grid updateDragPosition: (grid cellAtRowIndex: 2 colIndex: 2) center.
	self mouseRelease: gridCell buttons: #(left).
	self assert: (selection cells includesAllOf: (
		grid getCellsFrom: (grid cellAtRowIndex: 2 colIndex: 2) to: gridCell))
	
	