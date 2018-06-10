as yet unclassified
testRemoveRow
	
	| lastRowLabel dropdown|
	
	lastRowLabel := tool grid rows last text.
	
	(self expect: tool) to haveA: SpreadsheetRowLabel labelled: lastRowLabel.
	
	self click: (tool findWidgetOfKind: PHButton labelled: 'Menü').
	dropdown := world findToplevelOfKind: PHDropdown.
	self click: (dropdown findWidgetOfKind: PHDropdownItem labelled: 'Remove Row').
	
	(self expect: tool) not to haveA: SpreadsheetRowLabel labelled: lastRowLabel.