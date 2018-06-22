as yet unclassified
testRemoveRow
	
	| lastRowLabel dropdown|
	
	lastRowLabel := tool grid rows last text.
	
	self click: (tool findWidgetOfKind: PHButton labelled: 'Men¦º').
	dropdown := world findToplevelOfKind: PHDropdown.
	self click: (dropdown findWidgetOfKind: PHDropdownItem labelled: 'Remove Row').
	
	(self expect: tool) assert: (tool grid rows includes: lastRowLabel) not description: 'removes the row'