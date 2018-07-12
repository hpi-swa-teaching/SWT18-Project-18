as yet unclassified
testRemoveColumn

	| lastColumnLabel dropdown|
	
	lastColumnLabel := tool grid data columns last text.
	
	self click: (tool findWidgetOfKind: PHButton labelled: 'Add/Remove').
	dropdown := world findToplevelOfKind: PHDropdown.
	self click: (dropdown findWidgetOfKind: PHDropdownItem labelled: 'Remove Column').
	
	(self expect: tool) assert: (tool grid data columns includes: lastColumnLabel) not description: 'removes the column'