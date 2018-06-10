as yet unclassified
testAddRowAfter
	
	| rowNumber |
	
	rowNumber := tool grid rows size.
	self click: (matcher haveA: PHButton labelled: 'Menü') buttons: #(left).
	self click: (matcher haveA: PHDropdownItem labelled: 'Add Row After') buttons: #(left).
	
	(self expect: tool grid rows size) to equal: rowNumber + 1.