as yet unclassified
testMouseDown 

	| cell |
	cell := tool grid cellAtRowIndex: 3 colIndex: 3.
	self mouseDown: tool grid at: cell center.
	self assert: tool grid selection selectedCell = cell.