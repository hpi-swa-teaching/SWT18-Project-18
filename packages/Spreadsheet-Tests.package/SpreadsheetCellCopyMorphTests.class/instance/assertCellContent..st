as yet unclassified
assertCellContent: aCell
	
	self assert: aCell text = '6'.
	self assert: aCell calcRepresentation = '= 3+3'