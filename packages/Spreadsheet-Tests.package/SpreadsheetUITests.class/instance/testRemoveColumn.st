as yet unclassified
testRemoveColumn

	| lastColumnLabel dropdown|
	
	lastColumnLabel := tool grid columns last text.
	
	self click: (tool findWidgetOfKind: PHButton labelled: 'Men¦º').
	dropdown := world findToplevelOfKind: PHDropdown.
	self click: (dropdown findWidgetOfKind: PHDropdownItem labelled: 'Remove Column').
	
	(self expect: tool) assert: (tool grid columns includes: lastColumnLabel) not description: 'removes the column'