as yet unclassified
testAddRow

	|rows|
	
	rows := builder rows size.
	builder addRow.
	self assert: [builder rows size =  (rows + 1)]
