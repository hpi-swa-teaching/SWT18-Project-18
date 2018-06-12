as yet unclassified
testRemoveColumn

	| numberOfColumns |
	
	numberOfColumns := grid columns size.
	grid removeColumn.
	self assert: [grid columns size = ( numberOfColumns - 1)]
