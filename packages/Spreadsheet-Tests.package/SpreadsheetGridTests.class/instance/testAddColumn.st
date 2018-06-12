as yet unclassified
testAddColumn

	|numberOfColumns|
	
	numberOfColumns := builder columns size.
	builder addColumnAfter.
	self assert: [builder columns size =  (numberOfColumns + 1)]
