as yet unclassified
testRemoveColumn
	
	| columnNumber |
	
	columnNumber := tool grid columns size.
	self click: (matcher haveA: PHButton labelled: 'Menü') buttons: #(left).
	self click: (matcher haveA: PHDropdownItem labelled: 'Remove Column') buttons: #(left).
	
	(self expect: tool grid columns size) to equal: columnNumber - 1.