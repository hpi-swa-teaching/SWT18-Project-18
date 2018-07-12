as yet unclassified
testContentInNewCell

	| newCell |
	newCell := gridCell bottomCell.
	self mousePress: dragMorph buttons: #(left).
	self simulateMouseEvent: #mouseMove at: newCell center buttons: #(left) start: 0@0 morph: dragMorph.
	self simulateMouseEvent: #mouseUp at: newCell center buttons: #(left) start: 0@0 morph: dragMorph.
	self assert: newCell text = '6'.
	self assert: newCell calcRepresentation = '= 3+3'.