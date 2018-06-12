as yet unclassified
testColumnLabelSelectionLeft
	
	| column |
	
	column := grid columns at: 2.
	self mousePress: column buttons: #(left).
	grid updateDragPositionLabel: (grid columns first) center.
	self mouseRelease: gridCell buttons: #(left).
	self assert: (selection cells includesAllOf: (column cells addAll: (grid columns first cells)))