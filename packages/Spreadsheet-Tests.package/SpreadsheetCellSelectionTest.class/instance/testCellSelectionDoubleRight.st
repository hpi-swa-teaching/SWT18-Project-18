as yet unclassified
testCellSelectionDoubleRight

	self mousePress: gridCell buttons: #(left).
	grid updateDragPosition: ((gridCell rightCell) rightCell) center.
	self mouseRelease: gridCell buttons: #(left).
	self assert: (selection cells includesAllOf: {gridCell. gridCell rightCell. (gridCell rightCell) rightCell.})
	
	