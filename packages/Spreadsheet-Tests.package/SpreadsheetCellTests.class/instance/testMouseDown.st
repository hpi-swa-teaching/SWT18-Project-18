as yet unclassified
testMouseDown

	self assert: (grid selection position ~= gridCell position).
	self simulateMouseEvent: #mouseDown at: gridCell center buttons: #(left) start: 0@0 morph: grid.
	self assert: (grid selection position = gridCell position).