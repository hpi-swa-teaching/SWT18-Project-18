as yet unclassified
testMouseDown

	self assert: (grid selection bounds ~= gridCell bounds).
	self mouseClick: grid at: gridCell center.
	self assert: (grid selection bounds = gridCell bounds).