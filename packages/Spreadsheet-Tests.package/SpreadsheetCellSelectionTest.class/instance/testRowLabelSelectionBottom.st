as yet unclassified
testRowLabelSelectionBottom
	
	| row |
	
	row := grid rows at: 2.
	self simulateMouseEvent: #mouseDown at: (row center) buttons: #(left) start: 0@0 morph: grid.
	self simulateMouseEvent: #mouseMove at: ((grid rows at: 4) center) buttons: #(left) start: 0@0 morph: grid.
	self simulateMouseEvent: #mouseMove at: ((grid rows at: 3) center) buttons: #(left) start: 0@0 morph: grid.
	grid updateDragPosition: (grid rows at: 4) center.
	grid updateDragPosition: (grid rows at: 3) center.
	self simulateMouseEvent: #mouseUp at: ((grid rows at: 3) center) buttons: #(left) start: 0@0 morph: grid.
	self assert: (selection cells includesAllOf: (row cells addAll: ((grid rows at: 3) cells)))