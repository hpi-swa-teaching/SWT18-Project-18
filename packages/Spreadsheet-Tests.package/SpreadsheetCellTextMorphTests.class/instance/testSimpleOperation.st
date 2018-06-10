as yet unclassified
testSimpleOperation
	
	| operation |
	
	operation := '=1 + 1'.
	textMorph text: operation.
	textMorph perform: #crAction.
	self assert: [textMorph text = '2']