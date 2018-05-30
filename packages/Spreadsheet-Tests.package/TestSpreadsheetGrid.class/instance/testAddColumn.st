as yet unclassified
testAddColumn

	|numberOfColumns|
	
	numberOfColumns := builder columns size.
	builder addColumn.
	self assert: [builder columns size =  (numberOfColumns + 1)]
