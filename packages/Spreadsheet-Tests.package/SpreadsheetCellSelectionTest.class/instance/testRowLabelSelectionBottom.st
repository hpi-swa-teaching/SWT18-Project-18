as yet unclassified
testRowLabelSelectionBottom
	
	| row |
	
	row := grid data rows at: 2.
	self simulateMouseEvent: #mouseDown at: (row center) buttons: #(left) start: 0@0 morph: grid.
	self simulateMouseEvent: #mouseMove at: ((grid data rows at: 4) center) buttons: #(left) start: 0@0 morph: grid.
	self simulateMouseEvent: #mouseMove at: ((grid data rows at: 3) center) buttons: #(left) start: 0@0 morph: grid.
	grid updateDragPosition: (grid data rows at: 4) center.
	grid updateDragPosition: (grid data rows at: 3) center.
	self simulateMouseEvent: #mouseUp at: ((grid data rows at: 3) center) buttons: #(left) start: 0@0 morph: grid.
	self assert: (selection cells includesAllOf: (row cells addAll: ((grid data rows at: 3) cells)))