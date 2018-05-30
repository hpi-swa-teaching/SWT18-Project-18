as yet unclassified
testAddRow

	|numberOfRows|
	
	numberOfRows := builder rows size.
	builder addRow.
	self assert: [builder rows size =  (numberOfRows + 1)]
