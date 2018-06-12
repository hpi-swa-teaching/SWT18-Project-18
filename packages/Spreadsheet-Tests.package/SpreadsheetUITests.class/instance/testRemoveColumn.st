as yet unclassified
testRemoveColumn

	| lastColumnLabel dropdown|
	
	lastColumnLabel := tool grid columns last text.
	
	(self expect: tool) to haveA: SpreadsheetColumnLabel labelled: lastColumnLabel.
	
	self click: (tool findWidgetOfKind: PHButton labelled: 'Menü').
	dropdown := world findToplevelOfKind: PHDropdown.
	self click: (dropdown findWidgetOfKind: PHDropdownItem labelled: 'Remove Column').
	
	(self expect: tool) not to haveA: SpreadsheetColumnLabel labelled: lastColumnLabel.