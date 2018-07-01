as yet unclassified
testAddRowBefore
	
	| lastRowLabel dropdown expectedNewRowLabel|
	
	lastRowLabel := tool grid data rows last text.
	self click: (tool findWidgetOfKind: PHButton labelled: 'Add/Remove').
	dropdown := world findToplevelOfKind: PHDropdown.
	self click: (dropdown findWidgetOfKind: PHDropdownItem labelled: 'Add Row Before').
	
	expectedNewRowLabel := (lastRowLabel asInteger + 1) asString.
	
	(self expect: tool) assert: (tool grid data rows last text = expectedNewRowLabel) description: 'adds the row'.