as yet unclassified
testAddColumnBefore
	
	| lastColumnLabel dropdown expectedNewColumnLabel|
	
	lastColumnLabel := tool grid columns last text asCharacter.
	self click: (tool findWidgetOfKind: PHButton labelled: 'Menü').
	dropdown := world findToplevelOfKind: PHDropdown.
	self click: (dropdown findWidgetOfKind: PHDropdownItem labelled: 'Add Column Before').
	
	expectedNewColumnLabel := (lastColumnLabel asciiValue + 1) asCharacter asString.
	
	(self expect: tool) to haveA: SpreadsheetColumnLabel labelled: expectedNewColumnLabel.