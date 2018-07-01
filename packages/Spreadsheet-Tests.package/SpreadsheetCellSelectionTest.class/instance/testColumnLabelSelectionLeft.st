as yet unclassified
testColumnLabelSelectionLeft
	
	| column |
	
	column := grid columns at: 3.
	self simulateMouseEvent: #mouseDown at: column center buttons: #(left) start: 0@0 morph: grid.
	self simulateMouseEvent: #mouseMove at: ((grid columns at: 2) center) buttons: #(left) start: 0@0 morph: grid.
	self simulateMouseEvent: #mouseMove at: ((grid columns at: 1) center) buttons: #(left) start: 0@0 morph: grid.
	self simulateMouseEvent: #mouseMove at: ((grid columns at: 2) center) buttons: #(left) start: 0@0 morph: grid.
	grid updateDragPosition: (grid columns at: 1) center.
	grid updateDragPosition: (grid columns at: 2) center.
	self simulateMouseEvent: #mouseUp at: (grid columns at: 2) center buttons: #(left) start: 0@0 morph: grid.
	self assert: (selection cells includesAllOf: (column cells addAll: (grid columns at: 2) cells))