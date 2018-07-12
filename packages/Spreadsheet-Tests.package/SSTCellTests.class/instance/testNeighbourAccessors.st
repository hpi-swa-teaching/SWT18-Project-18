as yet unclassified
testNeighbourAccessors

	self assert: gridCell topCell = nil.
	self assert: gridCell leftCell = (grid cellAtRowIndex: 1 colIndex: 1).
	self assert: gridCell rightCell class = SSTCell.
	self assert: gridCell bottomCell class = SSTCell.
	"Cannot figure out why this does not work"
	"Transcript show: gridCell rightCell position; show: '@';show: (gridCell position + (gridCell width @ 0)); cr.
	self assert: gridCell rightCell position = (gridCell position + (gridCell width @ 0)).
	self assert: gridCell bottomCell position = (gridCell position + (0 @ gridCell height))."