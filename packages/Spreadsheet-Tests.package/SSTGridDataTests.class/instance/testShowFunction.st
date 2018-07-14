as yet unclassified
testShowFunction
	
	| dropdown selection |
	
	selection := data getCellsFrom: (data cellAtRowIndex: 2 colIndex: 2) to: (data cellAtRowIndex: 3 colIndex: 3).
	data grid selection startCell: (data cellAtRowIndex: 2 colIndex: 2).
	data grid selection currentCell: (data cellAtRowIndex: 3 colIndex: 3).
	data grid selection fromCollection: selection.
	self click: (tool findWidgetOfKind: PHButton labelled: 'Functions').
	dropdown := world findToplevelOfKind: PHDropdown.
	self click: (dropdown findWidgetOfKind: PHDropdownItem labelled: 'Sum').
	self assert: (data grid selection selectedCell = (data cellAtRowIndex: 4 colIndex: 2)).
	self assert: (data grid selection editor text = '= (B2 to: C3) contents sum'). 