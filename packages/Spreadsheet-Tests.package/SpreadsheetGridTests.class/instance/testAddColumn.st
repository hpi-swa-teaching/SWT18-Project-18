as yet unclassified
testAddColumn

	|numberOfColumns|
	
	numberOfColumns := grid columns size.
	grid addColumn.
	self assert: [grid columns size =  (numberOfColumns + 1)]
