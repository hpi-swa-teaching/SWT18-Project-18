as yet unclassified
testAddColumn

	|rows|
	
	rows := builder columns size.
	builder addColumn.
	self assert: [builder columns size =  (rows + 1)]
