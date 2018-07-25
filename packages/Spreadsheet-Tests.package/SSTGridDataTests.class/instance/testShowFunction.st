as yet unclassified
testShowFunction
	
	| dropdown cell1 cell2 |
	
	cell1 := (data cellAtRowIndex: 2 colIndex: 2).
	cell2 := (data cellAtRowIndex: 3 colIndex: 3).
	data grid selection selectFrom: cell1 to: cell2.
	self click: (tool findWidgetOfKind: PHButton labelled: 'Functions').
	dropdown := world findToplevelOfKind: PHDropdown.
	self click: (dropdown findWidgetOfKind: PHDropdownItem labelled: 'Sum').
	self assert: (data grid selection selectedCell = (data cellAtRowIndex: 4 colIndex: 2)).
	self assert: (data grid selection editor text = '= (B2 to: C3) contents sum'). 