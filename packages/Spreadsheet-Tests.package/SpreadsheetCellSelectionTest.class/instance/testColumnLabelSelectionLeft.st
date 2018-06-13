as yet unclassified
testColumnLabelSelectionLeft
	
	| column |
	
	column := grid columns at: 3.
	self mousePress: column buttons: #(left).
	self simulateMouseEvent: #mouseMove at: ((grid columns at: 1) center) buttons: #(left) start: 0@0 morph: column.
	self simulateMouseEvent: #mouseMove at: ((grid columns at: 2) center) buttons: #(left) start: 0@0 morph: column.
	grid updateDragPositionLabel: (grid columns at: 1) center.
	grid updateDragPositionLabel: (grid columns at: 2) center.
	self mouseRelease: gridCell buttons: #(left).
	self assert: (selection cells includesAllOf: (column cells addAll: (grid columns at: 2) cells))