as yet unclassified
testRemoveColumnSelected
	
	| columnContents columns dropdown expectedColumnContents |
	
	columns := tool grid data columns.
	columnContents := {{1 . 'a'} . {2 . 'b'} . {3 . 'c'}}. 
	columnContents do: [:pair | 
		(columns at: pair first) cells first text: pair second].
	self mouseClick:  tool grid at: (columns at: columnContents second first) center.
	self click: (tool findWidgetOfKind: PHButton labelled: 'Add/Remove').
	dropdown := world findToplevelOfKind: PHDropdown.
	self click: (dropdown findWidgetOfKind: PHDropdownItem labelled: 'Add Column Before').
	expectedColumnContents := {{1 . 'a'} . {4 . 'c'}}.
	expectedColumnContents do: [:pair | 
		(self expect: tool) assert: ((columns at: pair first) cells first text = pair second) description: 'removed column is gone'].