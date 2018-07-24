as yet unclassified
testRemoveEditor

	(grid cellAtRowIndex: 1 colIndex: 1) content: '1'.
	(grid cellAtRowIndex: 2 colIndex: 1) content: '1'.
	(grid cellAtRowIndex: 1 colIndex: 2) content: '1'.
	(grid cellAtRowIndex: 2 colIndex: 2) content: '1'.
	
	editor text: '=(A1 to: B2) contents sum'.
	selection removeEditor.
	self assert: selection selectedCell calcRepresentation  ='=(A1 to: B2) contents sum'..
	self assert: selection selectedCell text = '4'