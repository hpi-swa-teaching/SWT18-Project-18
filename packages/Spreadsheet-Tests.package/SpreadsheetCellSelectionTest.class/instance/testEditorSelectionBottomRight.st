as yet unclassified
testEditorSelectionBottomRight
	
	editor replaceCell: gridCell.
	editor state: #passive.
	self mousePress: editor buttons: #(left).
	self simulateMouseEvent: #mouseMove at: ((grid cellAtRowIndex: 4 colIndex: 4) center) buttons: #(left) start: 0@0 morph: editor.
	self simulateMouseEvent: #mouseMove at: ((grid cellAtRowIndex: 3 colIndex: 3) center) buttons: #(left) start: 0@0 morph: editor.
	grid updateDragPosition: (grid cellAtRowIndex: 4 colIndex: 4) center.
	grid updateDragPosition: (grid cellAtRowIndex: 3 colIndex: 3) center.
	self mouseRelease: editor buttons: #(left).
	self assert: (selection cells includesAllOf: (
		grid getCellsFrom: gridCell to: (grid cellAtRowIndex: 3 colIndex: 3)))
	
	