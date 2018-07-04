as yet unclassified
testAddColumnBefore
	
	| lastColumnLabel dropdown expectedNewColumnLabel|
	
	lastColumnLabel := tool grid data columns last text asCharacter.
	self click: (tool findWidgetOfKind: PHButton labelled: 'Add/Remove').
	dropdown := world findToplevelOfKind: PHDropdown.
	self click: (dropdown findWidgetOfKind: PHDropdownItem labelled: 'Add Column Before').
	
	expectedNewColumnLabel := (lastColumnLabel asciiValue + 1) asCharacter asString.
	
	(self expect: tool) assert: (tool grid data columns last text = expectedNewColumnLabel) description: 'adds the column'.