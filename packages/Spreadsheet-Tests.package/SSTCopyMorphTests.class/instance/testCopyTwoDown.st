as yet unclassified
testCopyTwoDown

	| twoDownCell |
	
	twoDownCell := (gridCell bottomCell) bottomCell.
	self mousePress: copyMorph buttons: #(left).
	self simulateMouseEvent: #mouseMove at: twoDownCell center buttons: #(left) start: 0@0 morph: copyMorph.
	self simulateMouseEvent: #mouseUp at: twoDownCell center buttons: #(left) start: 0@0 morph: copyMorph.
	{ gridCell. gridCell bottomCell. twoDownCell } do: [ :cell |
		self assertCellContent: cell]