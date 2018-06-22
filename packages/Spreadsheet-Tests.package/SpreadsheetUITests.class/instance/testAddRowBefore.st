as yet unclassified
testAddRowBefore
	
	| lastRowLabel dropdown expectedNewRowLabel|
	
	lastRowLabel := tool grid rows last text.
	self click: (tool findWidgetOfKind: PHButton labelled: 'Men¦º').
	dropdown := world findToplevelOfKind: PHDropdown.
	self click: (dropdown findWidgetOfKind: PHDropdownItem labelled: 'Add Row Before').
	
	expectedNewRowLabel := (lastRowLabel asInteger + 1) asString.
	
	(self expect: tool) assert: (tool grid rows last text = expectedNewRowLabel) description: 'adds the row'.