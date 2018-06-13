as yet unclassified
testSimpleOperation
	
	| operation |
	
	operation := '=1 + 1'.
	functionWindow text: operation.
	functionWindow perform: #crAction.
	self assert: editor text = '2'.
	self assert: functionWindow text = '=1 + 1'