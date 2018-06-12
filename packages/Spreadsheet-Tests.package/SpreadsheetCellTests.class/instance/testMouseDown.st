as yet unclassified
testMouseDown

	self assert: (grid editor position ~= gridCell position).
	self click: gridCell.
	self assert: (grid editor position = gridCell position).