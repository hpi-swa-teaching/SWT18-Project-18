as yet unclassified
testCellAccessor

	cellC3 calcRepresentation: '= A1 color: Color blue '.
	interpreter calculateContent: cellC3.
	self assert: cellA1 color = Color blue.