as yet unclassified
testAddRow

	|numberOfRows|
	
	numberOfRows := grid rows size.
	grid addRow.
	self assert: [grid rows size =  (numberOfRows + 1)]
