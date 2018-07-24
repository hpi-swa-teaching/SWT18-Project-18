as yet unclassified
testNeighbourAccessors

	self assert: gridCell topCell = nil.
	self assert: gridCell leftCell = (grid cellAtRowIndex: 1 colIndex: 1).
	self assert: gridCell rightCell class = SSTCell.
	self assert: gridCell bottomCell class = SSTCell.