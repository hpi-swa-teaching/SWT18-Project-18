as yet unclassified
showError: anException

	| dialog |
	
	dialog := SpreadsheetErrorWindow show: anException.
	dialog openFor: self grid.