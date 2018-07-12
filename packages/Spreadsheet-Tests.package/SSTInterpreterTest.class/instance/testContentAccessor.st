as yet unclassified
testContentAccessor

	cellA1 text: 'fu'.
	cellC3 calcRepresentation: '= A1 content'.
	interpreter calculateContent: cellC3.
	self assert: cellC3 text = 'fu'