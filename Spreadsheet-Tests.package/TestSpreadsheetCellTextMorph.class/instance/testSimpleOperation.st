as yet unclassified
testSimpleOperation
	
	| operation |
	
	operation := '=1 + 1'.
	textMorph contents: operation.
	textMorph perform: #crAction.
	self assert: [textMorph contents = '2']