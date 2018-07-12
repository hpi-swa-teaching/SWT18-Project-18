as yet unclassified
testOldCellEmpty

	| newCell |
	newCell := gridCell bottomCell.
	self mousePress: dragMorph buttons: #(left).
	self simulateMouseEvent: #mouseMove at: newCell center buttons: #(left) start: 0@0 morph: dragMorph.
	self simulateMouseEvent: #mouseUp at: newCell center buttons: #(left) start: 0@0 morph: dragMorph.
	self assert: gridCell text = ''.
	self assert: gridCell calcRepresentation = ''.