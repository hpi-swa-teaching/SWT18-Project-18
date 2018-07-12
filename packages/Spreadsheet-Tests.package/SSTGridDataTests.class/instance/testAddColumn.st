as yet unclassified
testAddColumn

	|numberOfColumns|
	
	numberOfColumns := data columns size.
	data addColumn.
	self assert: [data columns size =  (numberOfColumns + 1)]
