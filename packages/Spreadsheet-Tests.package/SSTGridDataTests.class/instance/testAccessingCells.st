as yet unclassified
testAccessingCells
	
	| aCell |
	
	1 to: data columns size do: [:aColumn |
		1 to: data rows size do: [:aRow |
			aCell := data cellAtRowIndex: aRow colIndex: aColumn.
			self assert: [aCell row index = aRow].
			self assert: [aCell column index = aColumn]]].