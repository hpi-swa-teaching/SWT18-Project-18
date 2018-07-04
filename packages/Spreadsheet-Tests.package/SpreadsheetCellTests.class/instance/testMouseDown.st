as yet unclassified
testMouseDown

	self assert: (grid selection bounds ~= gridCell bounds).
	self simulateMouseEvent: #mouseDown at: gridCell center buttons: #(left) start: 0@0 morph: grid.
	self assert: (grid selection bounds = gridCell bounds).