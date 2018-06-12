as yet unclassified
testAddColumn

	|numberOfColumns|
	
	numberOfColumns := grid columns size.
	grid addColumnAfter.
	self assert: [grid columns size =  (numberOfColumns + 1)]
