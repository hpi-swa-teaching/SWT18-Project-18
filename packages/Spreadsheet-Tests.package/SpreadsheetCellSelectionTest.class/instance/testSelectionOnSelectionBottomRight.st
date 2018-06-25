as yet unclassified
testSelectionOnSelectionBottomRight
	
	selection moveTo: gridCell.
	(Delay forMilliseconds: 1000) wait.
	self simulateMouseEvent: #mouseDown at: (gridCell center) buttons: #(left) start: 0@0 morph: grid.
	self simulateMouseEvent: #mouseMove at: ((grid cellAtRowIndex: 4 colIndex: 4) center) buttons: #(left) start: 0@0 morph: grid.
	self simulateMouseEvent: #mouseMove at: ((grid cellAtRowIndex: 5 colIndex: 5) center) buttons: #(left) start: 0@0 morph: grid.
	self simulateMouseEvent: #mouseUp at: ((grid cellAtRowIndex: 5 colIndex: 5) center) buttons: #(left) start: 0@0 morph: grid.
	self assert: (selection cells includesAllOf: (grid getCellsFrom: gridCell to: (grid cellAtRowIndex: 3 colIndex: 3)))
	
	