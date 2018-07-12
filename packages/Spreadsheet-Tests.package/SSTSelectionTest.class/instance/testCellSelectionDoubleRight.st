as yet unclassified
testCellSelectionDoubleRight

	self simulateMouseEvent: #mouseDown at: (gridCell center) buttons: #(left) start: 0@0 morph: grid.
	self simulateMouseEvent: #mouseMove at: (((gridCell rightCell) rightCell) center) buttons: #(left) start: 0@0 morph: grid.
	"grid updateDragPosition: ((gridCell rightCell) rightCell) center."
	self simulateMouseEvent: #mouseUp at: (((gridCell rightCell) rightCell) center) buttons: #(left) start: 0@0 morph: grid.
	self assert: (selection cells includesAllOf: {gridCell. gridCell rightCell. (gridCell rightCell) rightCell.})
	
	