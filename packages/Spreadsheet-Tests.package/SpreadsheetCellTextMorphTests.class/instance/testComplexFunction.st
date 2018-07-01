as yet unclassified
testComplexFunction

	(grid cellAtRowIndex: 1 colIndex: 1) text: '1'.
	(grid cellAtRowIndex: 2 colIndex: 1) text: '1'.
	(grid cellAtRowIndex: 1 colIndex: 2) text: '1'.
	(grid cellAtRowIndex: 2 colIndex: 2) text: '1'.
	
	self mouseDown: grid at: gridCell center. 
	self mouseDown: grid at: gridCell center.
	editor text: '=sum(A1:B2)'.
	self keyStroke: editor key: Character cr.
	self assert: selection selectedCell calcRepresentation = '=sum(A1:B2)'.
	self assert: selection selectedCell text = '4'