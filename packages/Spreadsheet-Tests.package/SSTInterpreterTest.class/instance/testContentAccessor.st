as yet unclassified
testContentAccessor

	cellA1 content: 'fu'.
	cellC3 calcRepresentation: '= A1 content'.
	SSTInterpreter calculateContent: cellC3 on: grid.
	self assert: cellC3 content = 'fu'