as yet unclassified
testGridAccessor

	| size |
	
	size := grid data rows size.
	cellC3 calcRepresentation: '= grid addRowAfter '.
	interpreter calculateContent: cellC3.
	self assert: grid data rows size = (size + 1).