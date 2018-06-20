as yet unclassified
testComplexFunction
	
	(grid cellAtRowIndex: 1 colIndex: 1) text: '1'.
	(grid cellAtRowIndex: 2 colIndex: 1) text: '1'.
	(grid cellAtRowIndex: 1 colIndex: 2) text: '1'.
	(grid cellAtRowIndex: 2 colIndex: 2) text: '1'.
	editor cell: gridCell.
	editor text: '=sum(A1:B2)'.
	editor update.
	editor state: #active.
	self click: editor.
	self keyStroke: editor key: Character cr.
	self assert: gridCell calcRepresentation = '=sum(A1:B2)'.
	self assert: gridCell text = '4'