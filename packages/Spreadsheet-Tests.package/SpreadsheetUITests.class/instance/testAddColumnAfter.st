as yet unclassified
testAddColumnAfter
	
	| lastColumnLabel dropdown expectedNewColumnLabel|
	
	self click: tool grid columns last.
	lastColumnLabel := tool grid columns last text asCharacter.
	self click: (tool findWidgetOfKind: PHButton labelled: 'Menü').
	dropdown := world findToplevelOfKind: PHDropdown.
	self click: (dropdown findWidgetOfKind: PHDropdownItem labelled: 'Add Column After').
	
	expectedNewColumnLabel := (lastColumnLabel asciiValue + 1) asCharacter asString.
	
	(self expect: tool) to haveA: SpreadsheetColumnLabel labelled: expectedNewColumnLabel.