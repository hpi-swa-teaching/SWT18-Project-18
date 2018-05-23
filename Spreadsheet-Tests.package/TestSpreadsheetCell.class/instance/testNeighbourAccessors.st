as yet unclassified
testNeighbourAccessors

	self assert: gridCell topCell = nil.
	self assert: gridCell leftCell = nil.
	self assert: gridCell rightCell class = SpreadsheetCell.
	self assert: gridCell bottomCell class = SpreadsheetCell.
	self assert: gridCell rightCell position = (gridCell position + (gridCell width @ 0)).
	self assert: gridCell bottomCell position = (gridCell position + (0 @ gridCell height)).