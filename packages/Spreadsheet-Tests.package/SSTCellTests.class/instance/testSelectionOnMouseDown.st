as yet unclassified
testSelectionOnMouseDown

	self assert: (grid selection bounds ~= gridCell bounds).
	self mouseDown: grid at: gridCell center.
	self assert: (grid selection bounds = gridCell bounds).