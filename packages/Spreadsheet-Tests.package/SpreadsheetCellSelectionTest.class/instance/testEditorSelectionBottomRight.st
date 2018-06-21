as yet unclassified
testEditorSelectionBottomRight
	
	selection moveTo: gridCell.
	selection addEditor.
	editor := selection editor.
	
	self mousePress: editor buttons: #(left).
	self simulateMouseEvent: #mouseMove at: ((grid cellAtRowIndex: 4 colIndex: 4) center) buttons: #(left) start: 0@0 morph: editor.
	self simulateMouseEvent: #mouseUp at: ((grid cellAtRowIndex: 5 colIndex: 5) center) buttons: #(left) start: 0@0 morph: editor.
	self assert: (selection selectedCell = editor cell).
	self assert: (selection cells size = 0).
	
	