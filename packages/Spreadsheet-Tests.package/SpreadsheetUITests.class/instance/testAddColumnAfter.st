as yet unclassified
testAddColumnAfter
	
	| lastColumnLabel dropdown expectedNewColumnLabel|
	
	lastColumnLabel := tool grid columns last text asCharacter.
	self click: (tool findWidgetOfKind: PHButton labelled: 'Men¦º').
	dropdown := world findToplevelOfKind: PHDropdown.
	self click: (dropdown findWidgetOfKind: PHDropdownItem labelled: 'Add Column After').
	
	expectedNewColumnLabel := (lastColumnLabel asciiValue + 1) asCharacter asString.
	
	(self expect: tool) assert: (tool grid columns last text = expectedNewColumnLabel) description: 'adds the column'.