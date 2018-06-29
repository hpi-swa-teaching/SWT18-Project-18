as yet unclassified
testRemoveRow

	| numberOfRows |
	
	numberOfRows := data rows size.
	data removeRow.
	self assert: [data rows size =  (numberOfRows - 1)]
