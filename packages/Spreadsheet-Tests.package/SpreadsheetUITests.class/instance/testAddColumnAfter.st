as yet unclassified
testAddColumnAfter
	
	| columnNumber |
	
	columnNumber := tool grid columns size.
	self click: (matcher haveA: PHButton labelled: 'Menü') buttons: #(left).
	self click: (matcher haveA: PHDropdownItem labelled: 'Add Column After') buttons: #(left).
	
	(self expect: tool grid columns size) to equal: columnNumber + 1.