as yet unclassified
testRowLabelSelectionBottom
	
	| row |
	
	row := grid rows at: 2.
	self mousePress: row buttons: #(left).
	self simulateMouseEvent: #mouseMove at: ((grid rows at: 4) center) buttons: #(left) start: 0@0 morph: row.
	self simulateMouseEvent: #mouseMove at: ((grid rows at: 3) center) buttons: #(left) start: 0@0 morph: row.
	grid updateDragPositionLabel: (grid rows at: 4) center.
	grid updateDragPositionLabel: (grid rows at: 3) center.
	self mouseRelease: row buttons: #(left).
	self assert: (selection cells includesAllOf: (row cells addAll: ((grid rows at: 3) cells)))