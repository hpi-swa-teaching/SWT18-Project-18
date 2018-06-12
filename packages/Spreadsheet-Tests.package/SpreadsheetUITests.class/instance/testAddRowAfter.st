as yet unclassified
testAddRowAfter
	
	| lastRowLabel dropdown expectedNewRowLabel|
	
	lastRowLabel := tool grid rows last text.
	self click: (tool findWidgetOfKind: PHButton labelled: 'Menü').
	dropdown := world findToplevelOfKind: PHDropdown.
	self click: (dropdown findWidgetOfKind: PHDropdownItem labelled: 'Add Row After').
	
	expectedNewRowLabel := (lastRowLabel asInteger + 1) asString.
	
	(self expect: tool) to haveA: SpreadsheetRowLabel labelled: expectedNewRowLabel.