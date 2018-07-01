as yet unclassified
testAddRow

	|numberOfRows|
	
	numberOfRows := data rows size.
	data addRow.
	self assert: [data rows size =  (numberOfRows + 1)]
