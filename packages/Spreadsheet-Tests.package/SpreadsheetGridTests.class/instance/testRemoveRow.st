as yet unclassified
testRemoveRow

	| numberOfRows |
	
	numberOfRows := grid rows size.
	grid removeRow.
	self assert: [grid rows size =  (numberOfRows - 1)]
