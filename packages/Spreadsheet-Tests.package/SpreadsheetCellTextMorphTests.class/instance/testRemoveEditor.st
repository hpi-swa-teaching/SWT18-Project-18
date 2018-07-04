as yet unclassified
testRemoveEditor

	(grid cellAtRowIndex: 1 colIndex: 1) text: '1'.
	(grid cellAtRowIndex: 2 colIndex: 1) text: '1'.
	(grid cellAtRowIndex: 1 colIndex: 2) text: '1'.
	(grid cellAtRowIndex: 2 colIndex: 2) text: '1'.
	
	editor text: '=sum(A1:B2)'.
	selection removeEditor.
	self assert: selection selectedCell calcRepresentation  = '=sum(A1:B2)'.
	self assert: selection selectedCell text = '4'