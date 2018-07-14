as yet unclassified
testAddRowAfterSelected
	
	| rowContents rows dropdown expectedRowContents |
	
	rows := tool grid data rows.
	rowContents := {{1 . 'a'} . {2 . 'b'} . {3 . 'c'}}. 
	rowContents do: [:pair | 
		(rows at: pair first) cells first text: pair second].
	self mouseClick:  tool grid at: (rows at: rowContents second first) center.
	self click: (tool findWidgetOfKind: PHButton labelled: 'Add/Remove').
	dropdown := world findToplevelOfKind: PHDropdown.
	self click: (dropdown findWidgetOfKind: PHDropdownItem labelled: 'Add Row After').
	expectedRowContents := {{1 . 'a'} . {2 . 'b'} . {3 . ''} . {4 . 'c'}}.
	expectedRowContents do: [:pair | 
		(self expect: tool) assert: ((rows at: pair first) cells first text = pair second) description: 'adds the new row after the selcted one'].