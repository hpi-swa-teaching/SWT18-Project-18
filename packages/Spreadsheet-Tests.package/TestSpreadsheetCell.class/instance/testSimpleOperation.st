as yet unclassified
testSimpleOperation
	
	| operation |
	
	operation := '=1 + 1'.
	cell contents: operation.
	cell perform: #crAction.
	self assert: [cell contents = '2']