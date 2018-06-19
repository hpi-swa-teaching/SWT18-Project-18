as yet unclassified
testOldCellEmpty

	| newCell |
	newCell := gridCell bottomCell.
	self mousePress: dragMorph buttons: #(left).
	self simulateMouseEvent: #mouseMove at: newCell center buttons: #(left) start: 0@0 morph: dragMorph.
	self mouseRelease: dragMorph buttons: #(left).
	self assert: gridCell text = ''.
	self assert: gridCell calcRepresentation = ''.