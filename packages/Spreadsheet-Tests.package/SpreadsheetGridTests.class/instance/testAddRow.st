as yet unclassified
testAddRow

	|numberOfRows|
	
	numberOfRows := grid rows size.
	grid addRowAfter.
	self assert: [grid rows size =  (numberOfRows + 1)]
