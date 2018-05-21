as yet unclassified
testRemoveRow

	|rows|
	
	rows := builder rows size.
	builder removeRow.
	self assert: [builder rows size =  (rows - 1)]
