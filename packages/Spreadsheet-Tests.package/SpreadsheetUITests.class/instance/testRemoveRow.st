as yet unclassified
testRemoveRow
	
	| lastRowLabel dropdown|
	
	lastRowLabel := tool grid data rows last text.
	
	self click: (tool findWidgetOfKind: PHButton labelled: 'Add/Remove').
	dropdown := world findToplevelOfKind: PHDropdown.
	self click: (dropdown findWidgetOfKind: PHDropdownItem labelled: 'Remove Row').
	
	(self expect: tool) assert: (tool grid rows includes: lastRowLabel) not description: 'removes the row'