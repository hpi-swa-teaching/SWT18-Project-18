as yet unclassified
testRowLabelSelectionBottom
	
	| row |
	
	row := grid rows at: 2.
	self mousePress: row buttons: #(left).
	grid updateDragPositionLabel: (grid rows at: 3) center.
	self mouseRelease: gridCell buttons: #(left).
	self assert: (selection cells includesAllOf: (row cells addAll: ((grid rows at: 3) cells)))