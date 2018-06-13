as yet unclassified
testCellSelectionBottomRight

	self mousePress: gridCell buttons: #(left).
	self simulateMouseEvent: #mouseMove at: ((grid cellAtRowIndex: 4 colIndex: 4) center) buttons: #(left) start: 0@0 morph: gridCell.
	self simulateMouseEvent: #mouseMove at: ((grid cellAtRowIndex: 3 colIndex: 3) center) buttons: #(left) start: 0@0 morph: gridCell.
	grid updateDragPosition: (grid cellAtRowIndex: 4 colIndex: 4) center.
	grid updateDragPosition: (grid cellAtRowIndex: 3 colIndex: 3) center.
	self mouseRelease: gridCell buttons: #(left).
	self assert: (selection cells includesAllOf: (
		grid getCellsFrom: gridCell to: (grid cellAtRowIndex: 3 colIndex: 3)))
	
	