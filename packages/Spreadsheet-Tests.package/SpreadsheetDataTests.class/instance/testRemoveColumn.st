as yet unclassified
testRemoveColumn

	| numberOfColumns |
	
	numberOfColumns := data columns size.
	data removeColumn.
	self assert: [data columns size = ( numberOfColumns - 1)]
