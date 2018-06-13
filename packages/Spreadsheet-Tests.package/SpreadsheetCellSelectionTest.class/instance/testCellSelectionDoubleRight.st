as yet unclassified
testCellSelectionDoubleRight

	self mousePress: gridCell buttons: #(left).
	self simulateMouseEvent: #mouseMove at: (((gridCell rightCell) rightCell) center) buttons: #(left) start: 0@0 morph: gridCell.
	grid updateDragPosition: ((gridCell rightCell) rightCell) center.
	self mouseRelease: gridCell buttons: #(left).
	self assert: (selection cells includesAllOf: {gridCell. gridCell rightCell. (gridCell rightCell) rightCell.})
	
	