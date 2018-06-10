as yet unclassified
testAddRowAfter
	
	| rowNumber |
	
	rowNumber := window tool tablesWindow grid rows size.
	(matcher haveA: PHButton labelled: 'Menü') click.
	(matcher haveA: PHDropdownItem labelled: 'Add Row After') click.
	
	(self expect: window tool tablesWindow grid rows size) to equal: rowNumber + 1.