as yet unclassified
testSelfAccessor

	cellC3 calcRepresentation: '= self color: Color blue '.
	interpreter calculateContent: cellC3.
	self assert: cellC3 color = Color blue.