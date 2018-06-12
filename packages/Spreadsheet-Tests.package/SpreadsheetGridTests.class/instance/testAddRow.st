as yet unclassified
testAddRow

	|numberOfRows|
	
	numberOfRows := builder rows size.
	builder addRowAfter.
	self assert: [builder rows size =  (numberOfRows + 1)]
