as yet unclassified
testTabInBounds

	self simulateMouseEvent: #mouseDown at: (gridCell center) buttons: #(left) start: 0@0 morph: grid.
	self simulateMouseEvent: #mouseMove at: ((grid cellAtRowIndex: 4 colIndex: 4) center) buttons: #(left) start: 0@0 morph: grid.
	self simulateMouseEvent: #mouseUp at: ((grid cellAtRowIndex: 4 colIndex: 4) center) buttons: #(left) start: 0@0 morph: grid.
	self assert: (selection cells includesAllOf: (grid getCellsFrom: gridCell to: (grid cellAtRowIndex: 4 colIndex: 4))).
	self keyStroke: grid key: Character tab.
	self assert: grid selection selectedCell = (gridCell rightCell).
	self keyStroke: grid key: Character tab.
	self assert: grid selection selectedCell = (gridCell bottomCell).