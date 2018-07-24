as yet unclassified
testAddColumnAfterSelected
	
	| columnContents columns dropdown expectedColumnContents |
	
	columns := tool grid data columns.
	columnContents := {{1 . 'a'} . {2 . 'b'} . {3 . 'c'}}. 
	columnContents do: [:pair | 
		(columns at: pair first) cells first text: pair second].
	self mouseClick:  tool grid at: (columns at: columnContents second first) center.
	self click: (tool findWidgetOfKind: PHButton labelled: 'Add/Remove').
	dropdown := world findToplevelOfKind: PHDropdown.
	self click: (dropdown findWidgetOfKind: PHDropdownItem labelled: 'Add Column After').
	expectedColumnContents := {{1 . 'a'} . {2 . 'b'} . {3 . ''} . {4 . 'c'}}.
	expectedColumnContents do: [:pair | 
		(self expect: tool) assert: ((columns at: pair first) cells first text = pair second) description: 'adds the new column after the selcted one'].