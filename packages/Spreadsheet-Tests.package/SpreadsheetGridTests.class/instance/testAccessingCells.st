as yet unclassified
testAccessingCells
	
	| aCell |
	
	1 to: grid columns size do: [:aColumn |
		1 to: grid rows size do: [:aRow |
			aCell := grid cellAtRowIndex: aRow colIndex: aColumn.
			self assert: [aCell row index = aRow].
			self assert: [aCell column index = aColumn]]].