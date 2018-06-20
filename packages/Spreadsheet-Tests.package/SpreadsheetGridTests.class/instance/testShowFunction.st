as yet unclassified
testShowFunction
	
	| dropdown selection |
	
	selection := grid getCellsFrom: (grid cellAtRowIndex: 2 colIndex: 2) to: (grid cellAtRowIndex: 3 colIndex: 3).
	grid selection startCell: (grid cellAtRowIndex: 2 colIndex: 2).
	grid selection currentCell: (grid cellAtRowIndex: 3 colIndex: 3).
	grid selection fromCollection: selection.
	self click: (tool findWidgetOfKind: PHButton labelled: 'Functions').
	dropdown := world findToplevelOfKind: PHDropdown.
	self click: (dropdown findWidgetOfKind: PHDropdownItem labelled: 'Sum').
	self assert: (grid editor cell = (grid cellAtRowIndex: 4 colIndex: 2)).
	self assert: (grid editor text = '=sum(B2:C3)'). 