as yet unclassified
showError: anException

	| dialog |
	
	anException signal.
	dialog := SSTErrorWindow show: anException.
	dialog openFor: self grid.